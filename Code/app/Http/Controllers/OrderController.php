<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controllers;
use Illuminate\Support\Facades\Redirect;

//orderrelated
 use App\Models\tbl_ordermaster;
 use App\Models\tbl_ordertrans;
 use App\Models\tabletransactions;
 use App\Models\tbl_tabledetails;
 use App\Models\tbl_tablegroup;
 use App\Models\tbl_userdetail;
 use App\Models\tbl_itemmaster;


class OrderController extends Controller
{

    public function InvoiceList()
    {
        $OMList = tbl_ordermaster::where('status','=',2)->orderbydesc('id')->get();
        return view('order.InvoiceList',['orderlist'=>$OMList]);
    }

    public function InvoiceCreate(Request $request)
    {
        $OrderId= intval($request->query('id'));
        $orderdetail = tbl_ordermaster::join('tbl_company','tbl_company.id','=','tbl_ordermaster.Comp_id')
        ->where('tbl_ordermaster.id','=',$OrderId)
        ->orderbydesc('tbl_ordermaster.id')
        ->select('tbl_ordermaster.*','tbl_company.Company_Name as CompanyName')
        ->first();
        //$pdf = PDF::loadView('invoices.pdf', compact('orderdetail'));

        //return $pdf->stream(); // or return $pdf->download('invoice.pdf');
        return view('order.Invoice',['orderdetail'=>$orderdetail]);
    }

    public function OTCreate(Request $request)
    {
        $tblid = intval($request->query('id'));
        $tbltransinfo = tabletransactions::where('table_id','=',$tblid)->where('status','=',1)->first();
        $orderid  = $tbltransinfo->order_id;
        $itemmaster = tbl_itemmaster::where('Comp_Id','=', intval(session('companyinfo')->id) )->get();
        return view('order.ordercreate',
        ['itemmaster'=>$itemmaster , 'tbltransinfo'=>$tbltransinfo , 'orderid'=>$orderid]);
    }
    public function OTCreateAction(Request $request)
    {
        tbl_ordertrans::create($request->all());
        return redirect()->action([OrderController::class, 'OTCreate'], ['id' => $request->table_id]);
    }

    public function OTList()
    {
        $value = session('userinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        $OTList = tbl_ordertrans::join('tbl_itemmaster','tbl_itemmaster.id','=','tbl_ordertrans.item_id')
                ->where('tbl_ordertrans.item_order','=',0)->select('tbl_ordertrans.id as OrderTransId','tbl_ordertrans.qty as qty','tbl_itemmaster.ItemName','tbl_ordertrans.item_order as status')->get();
        return view('order.orderlist',['ordertrans'=>$OTList ]);
    }

    public function CompleteOTListPending()
    {
        $POTList = tbl_ordertrans::join('tbl_itemmaster','tbl_itemmaster.id','=','tbl_ordertrans.item_id')
                ->where('tbl_ordertrans.item_order','=',1)->select('tbl_ordertrans.id as OrderTransId','tbl_ordertrans.qty as qty','tbl_itemmaster.ItemName','tbl_ordertrans.item_order as status')->get();
        return view('order.completeorder',['ordertrans'=>$POTList ]);
    }

    public function changestatus(Request $request)
    {

        $page =$request->query('route');
        $status = intval($request->query('status'));
        $ordertransid = intval($request->query('OrderTransId'));
        if($status==0)
        {
            $status=1;
        }
        else if($status==1)
        {
            $status=0;
        }
        $ordertrans = tbl_ordertrans::find($ordertransid);
        $ordertrans->update([ 'item_order'=> $status ]);
        return redirect()->action([OrderController::class, $page]);
    }

}
