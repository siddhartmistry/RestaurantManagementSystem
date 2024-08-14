<?php
namespace App\Http\Controllers;

 use App\Models\tbl_itemgroup;
 use App\Models\tbl_itemmaster;

 use Illuminate\Http\Request;
 use App\Http\Controllers\Controllers;
 use Illuminate\Support\Facades\Redirect;
 class ItemController extends Controller
 {
    #region ItemGroup
    public function IGList()
    {
        $value = session('userinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        $itemgroup = tbl_itemgroup::all();
        return view('item.itemgroupindex',['itemgroup'=>$itemgroup]);
    }
    public function IGCreate()
    {
        return view('item.itemgroupcreate');
    }
    public function IGCreateAction(Request $request)
    {
        tbl_itemgroup::create($request->all());
        return Redirect::action([ItemController::class, 'IGList']);
    }
    #endregion

    #region ItemMaster
    #region Itemmaster List
    public function IMList()
    {
        $value = session('userinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        $itemList = tbl_itemmaster::join('tbl_itemgroup','tbl_itemgroup.id','=','tbl_itemmaster.Group_Id')
        ->select('tbl_itemmaster.*','tbl_itemgroup.ItemGroupName')->orderBy('tbl_itemmaster.Group_Id','asc')
        ->get();
        return view('item.itemindex',['itemList'=>$itemList]);
    }
    #endregion
    #region ItemMaster Create
    public function IMCreate()
    {
        $itemgroup = tbl_itemgroup::all();
        return view('item.itemcreate',['itemgroup'=>$itemgroup]);
    }
    public function IMCreateAction(Request $request)
    {
        tbl_itemmaster::create($request->all());
        return Redirect::action([ItemController::class, 'IMList']);
    }
    #endregion
    #region ItemMaster Update
    public function IMUpdate( Request $request )
    {
        $id = intval($request->query('id'));
        $itemgroup = tbl_itemgroup::all();
        $itemdetails = tbl_itemmaster::where('id','=',$id)->first();
        return view('item.itemupdate',['itemgroup'=>$itemgroup , 'itemdetails'=>$itemdetails]);
    }
    public function IMUpdateAction( Request $request )
    {
        $id = intval($request->input('id'));
        tbl_itemmaster::where('id',$id)->update([
            'ItemName' => $request->input('ItemName'),
            'Description' => $request->input('Description'),
            'Rate' => $request->input('Rate'),
            'Discount' => $request->input('Discount'),
            'Tax' => $request->input('TAX'),
            'Amount' => $request->input('Amount'),
            'Group_Id' => $request->input('Group_Id'),
        ]);
        return Redirect::action([ItemController::class, 'IMList']);
    }
    #endregion
    #endregion
 }
