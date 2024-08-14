<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controllers;
use Illuminate\Support\Facades\Redirect;
 use App\Models\tbl_tabledetails;
 use App\Models\tbl_tablegroup;
 use App\Models\tbl_userdetail;
 use App\Models\tabletransactions;

 //orderrelated
 use App\Models\tbl_ordermaster;
 use App\Models\tbl_ordertrans;


 class TableController extends Controller
 {
    #region tableGroup
        #region tableGroupList
        public function TGList()
        {
            $value = session('userinfo');
            if($value == null)
            {
                return Redirect::action([CompanyController::class, 'companylogin']);
            }
            $TGList = tbl_tablegroup::where('isactive','!=',0)->get();
            return view('table.tgindex',['TGList'=>$TGList]);
        }
        #endregion
        #region tableGroupInfo
        public function TGInfo(Request $request)
        {
            $id = intval($request->query('id'));
            $TGInfo = tbl_tablegroup::where('id','=',$id)->first();
            return view('table.tginfo',['TGinfo'=>$TGInfo]);
        }
        #endregion
        #region delete ( soft delete)
        public function TGDelete(Request $request)
        {
            $id = intval($request->query('id'));
            $tableGroup = tbl_tablegroup::find($id);
            $tableGroup->update([
                'isactive' => 0,
                // Add more fields as needed
            ]);
            return Redirect::action([TableController::class, 'TGList']);
        }
        #endregion
        #region tableGroupCreate
        public function TGcreate()
        {

        }
        public function TGcreateAction()
        {

        }
        #endregion
    #endregion

    #region tableDetails
        #region waiter table list
        public function WTDList()
        {

        }
        #endregion

        #region tbllistwithorder
        public function PTDlist()
        {
            $value = session('userinfo');
            if($value == null)
            {
                return Redirect::action([CompanyController::class, 'companylogin']);
            }
            $AcTableList =tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->join('tabletransactions','tabletransactions.table_id','=','tbl_tabledetails.id')
            ->where('tabletransactions.status','=',1)
            ->where('tbl_tablegroup.roomtype','=','AC')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            $NonAcTableList = tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->join('tabletransactions','tabletransactions.table_id','=','tbl_tabledetails.id')
            ->where('tabletransactions.status','=',1)
            ->where('tbl_tablegroup.roomtype','=','Non-AC')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            return view('table.tdindexpending',
            ['AcTableList'=>$AcTableList,
            'NonAcTableList'=>$NonAcTableList]);
        }
        #endregion

        #region tableDetailsList
        public function TDList()
        {
            $value = session('userinfo');
            if($value == null)
            {
                return Redirect::action([CompanyController::class, 'companylogin']);
            }
            $AcTableList = tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
                ->where('tbl_tablegroup.roomtype','=','AC')
                ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
                ->get();

            $NonAcTableList = tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->where('tbl_tablegroup.roomtype','=','Non-AC')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            $TwoPersonTableList =tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->where('tbl_tablegroup.person','=','2')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            $FourPersonTableList =tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->where('tbl_tablegroup.person','=','4')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            $SixPersonTableList =tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->where('tbl_tablegroup.person','=','6')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            $EightPersonTableList =tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->where('tbl_tablegroup.person','=','6')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
            ->get();

            $AllTableList = tbl_tabledetails::join('tbl_tablegroup', 'tbl_tablegroup.id', '=', 'tbl_tabledetails.tablegroupid')
            ->select('tbl_tabledetails.*', 'tbl_tablegroup.*','tbl_tabledetails.isactive','tbl_tabledetails.id as Tid')
                ->get();

        return view('table.tdindex',
        [
            'AcTableList'=>$AcTableList,
            'NonAcTableList'=>$NonAcTableList,
            'AllTableList'=>$AllTableList,
            'TwoPersonTableList' => $TwoPersonTableList,
            'FourPersonTableList' => $FourPersonTableList,
            'SixPersonTableList' => $SixPersonTableList,
            'EightPersonTableList' => $EightPersonTableList
        ]);

        }
        #endregion
        #region tableDetailCreate
        public function TDCreate()
        {
            $users = tbl_userdetail::where('UserGroup_Id','=','3')->get();
            $tablegroup = tbl_tablegroup::where('isactive','!=',0)->get();
            return view('table.tdcreate',['tablegroup'=>$tablegroup , 'users'=> $users]);
        }
        public function TDCreateAction(Request $request)
        {
            tbl_tabledetails::create($request->all());
            return Redirect::action([TableController::class, 'TDList']);
        }
        #endregion
        #region tableStatus
        public function TDStatus(Request $request)
        {
            // 1 ->  vacant 2 -> occupied 3 -> reserved 4 -> complete
            $id = intval($request->query('id'));
            $status = intval($request->query('isActive'));

            if($status==2)
            {
                $orderData = [
                    //'Order_No' => 'your_order_number',
                    //'PreOrder_No' => 'your_preorder_number',
                    'Order_Date' => now(), // Assuming Order_Date is a timestamp
                    'Total_Amount' => 00.00, // Replace with the actual amount
                    'Discount' => 00.00, // Replace with the actual discount
                    'Net_Amount' => 00.00, // Replace with the actual net amount
                    'Advance_Amount' => 00.00, // Replace with the actual advance amount
                    'Pending_Amount' => 00.00, // Replace with the actual pending amount
                    'Account_Id' => 1, // Replace with the actual account ID
                    'SysAccount_Id' => 1, // Replace with the actual sys account ID
                    'Year_Id' => 1, // Replace with the actual year ID
                    'Comp_Id' => 1, // Replace with the actual company ID
                    'User_Id' =>  intval(session('userinfo')->id), // Replace with the actual user ID
                    'DeliveryTo' => 'Customer Name', // Replace with the actual delivery address
                    'InsertTime' => now(), // Assuming InsertTime is a timestamp
                    'InsertSys' => 'your_system_info',
                    'status' => 1, // Replace with the actual status ->   0 cancle ,  1 -> inprogress
                ];

                tbl_ordermaster::create($orderData);
                $lastOrder = tbl_ordermaster::latest()->first();

                $tabletransaction =
                [
                    'table_id' => $id,
                    'order_id' => intval($lastOrder->id),
                    'user_id' => intval(session('userinfo')->id),
                    'total_amount' => 0,
                    'paid_amount' => 0,
                    'change_amount' => 0,
                    'status' => 1, //
                    'items' =>'text',
                ];

                tabletransactions::create($tabletransaction);
            }
            else if($status==1)
            {
                $tbltransinfo = tabletransactions::where('table_id','=',$id)->where('status','=',1)->first();
                $tbltransinfo->update([ 'status'=>2 ]);
                $orderdetail = tbl_ordermaster::where('id','=',intval($tbltransinfo->order_id))->first();
                $orderdetail->update([
                    'status'=> 2
                ]);
                $status=1;
            }
            else if($status==4)
            {
                $tbltransinfo = tabletransactions::where('table_id','=',$id)->where('status','=',1)->first();
                $tbltransinfo->update([ 'status'=>2 ]);
                $amount = tbl_ordertrans::where('order_id','=',intval($tbltransinfo->order_id))->sum('amount');
                $orderdetail = tbl_ordermaster::where('id','=',intval($tbltransinfo->order_id))->first();
                $orderdetail->update([
                    'status'=> 2,
                    'Total_Amount'=>$amount
                ]);

                $status=1;
            }
            $tableDetail = tbl_tabledetails::find($id);
            //$tabledetail = tbl_tabledetails::where('id','=',$id)->where('isactive','=',$status)->exists();
            $tableDetail->update([
                'isactive' => $status,
            ]);

            return Redirect::action([TableController::class, 'TDList']);
        }
        #endregion
        #region tabletrans
        public function TTDtrans(Request $request)
        {
            $id = intval($request->query('id'));
            $tid = intval($request->query('tid'));

        }
        #endregion

    #endregion
 }
