<?php
namespace App\Http\Controllers;

 use App\Models\tbl_company;
 use App\Models\tbl_usergroup;
 use App\Models\tbl_userdetail;
 use App\Models\dashboardmenu;

 use Illuminate\Http\Request;
 use App\Http\Controllers\Controllers;
 use Illuminate\Support\Facades\Redirect;
 class CompanyController extends Controller
 {
    public function companydetails()
    {
        $companies = tbl_company::all();
        return view('company.index',['companies'=>$companies]);
    }
    #region companylogin
    public function companylogin()
    {
        //session(['error'=>'']);
        return view('company.loginindex');
    }
    public function companyloginaction(Request $request)
    {
        session(['error'=>'']);
        $password = $request->input('password');
        $email = $request->input('email');
        $company =tbl_company::where('Company_Email','=',$email)->where('Password','=',$password)->exists();
        if($company != null)
        {
            $companydetail =tbl_company::where('Company_Email','=',$email)->where('Password','=',$password)->first();
            session(['companyinfo' => $companydetail ]);
            return Redirect::action([CompanyController::class, 'userlogin']);
        }
        else
        {
            session(['error'=> " Incorrect Email Id Or Password Incorrect"]);
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
    }
    #endregion

    #region dashboard
    public function dashboard()
    {
        $uservalue = session('userinfo');
        $comanyvalue= session('companyinfo');
        if($uservalue == null && $comanyvalue== null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        return view('company.dashboard');
    }
    #endregion

    #region logoff
    public function logoff()
    {
        session()->flush();
        return Redirect::action([CompanyController::class, 'companylogin']);
    }
    #endregion

    #region userlogin
    public function userlogin()
    {
        //session(['usererror'=>'']);
        $value = session('companyinfo');
        if($value == null)
        {
            return Redirect::action([CompanyController::class, 'companylogin']);
        }
        return view('user.userlogin');
    }
    public function userloginaction(Request $request)
    {
        $password = $request->input('password');
        $email = $request->input('email');
        $user =tbl_userdetail::where('Email','=',$email)->where('Password','=',$password)->exists();

        if($user != null)
        {
            $userinfo = tbl_userdetail::where('Email','=',$email)->where('Password','=',$password)->first();
            $menuitem = dashboardmenu::where('usergroup_id','=',$userinfo->UserGroup_Id)->orderBy('dashboardmenu.name','asc')->get();
            session(['menus'=>$menuitem]);
            session(['userinfo' => $userinfo ]);
            return Redirect::action([CompanyController::class, 'dashboard']);
        }
        else
        {
            session(['usererror'=> " Incorrect Email Id Or Password Incorrect"]);
            return Redirect::action([CompanyController::class, 'userlogin']);
        }
    }
    #endregion
 }
