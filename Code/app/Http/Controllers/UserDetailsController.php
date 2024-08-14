<?php
namespace App\Http\Controllers;

 use App\Models\tbl_company;
 use App\Models\tbl_usergroup;
 use App\Models\tbl_userdetail;
 use App\Models\dashboardmenu;

 use Illuminate\Http\Request;
 use App\Http\Controllers\Controllers;
 use Illuminate\Support\Facades\Redirect;
 class UserDetailsController extends Controller
 {
    public function userdetails()
    {
        $value = session('userinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        //$usergroupid = intval($value->UserGroup_Id);
        $usergroupid = intval($value->UserGroup_Id);
        $usergroupids = [1,$usergroupid];
        //$userlist = tbl_userdetail::where('tbl_userdetail.id','!=',$value->id)->join('tbl_usergroup','tbl_usergroup.id','=',$value->UserGroup_Id)->get();
        $userlist = tbl_userdetail::join('tbl_usergroup', 'tbl_usergroup.id', '=', 'tbl_userdetails.usergroup_id')
                ->where('tbl_userdetails.id', '!=', $value->id)
                ->whereNotIn('tbl_userdetails.UserGroup_Id',$usergroupids)
                ->select('tbl_userdetails.*', 'tbl_usergroup.*')
                ->get();
        return view('user.index',['userlist'=>$userlist]);
    }
    public function userinfo()
    {
        $value = session('userinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        $userinfo = tbl_userdetail::where('id','=',$value->id)->first();
        return view('user.userinfo',['userinfo'=>$userinfo]);
    }

    public function userregister()
    {
        $value = session('userinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        $usergroupid = intval($value->UserGroup_Id);
        $usergroupids = [1,$usergroupid];
        $usergroup = tbl_usergroup::whereNotIn('id',$usergroupids)->get();
        return view('user.userregister',['usergroup'=>$usergroup]);
    }
    public function userregisteraction(Request $request)
    {
        $this->validate($request, [
            'UserGroup_Id' => 'required',
            'User_Name' => 'required',
            'Password' => 'required',
            'Email' => 'required|email|unique:tbl_userdetails',
            'Type' => 'required',
        ]);
        tbl_userdetail::create($request->all());
        return Redirect::action([CompanyController::class, 'dashboard']);
    }

 }
