<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\UserDetailsController;
use App\Http\Controllers\TableController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\OrderController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [CompanyController::class, 'companylogin']);
Route::get('/index',[CompanyController::class, 'companydetails']);
#region company login page
Route::get('/companylogin',[CompanyController::class, 'companylogin']);
Route::post('/companyloginaction',[CompanyController::class , 'companyloginaction']);
#endregion
#region user login page
Route::get('/userlogin',[CompanyController::class, 'userlogin']);
Route::post('/userloginaction',[CompanyController::class, 'userloginaction']);
#endregion
#region logoff
Route::get('/logoff',[CompanyController::class, 'logoff']);
#endregion


Route::get('/companydetails', [CompanyController::class, 'companydetails']);
Route::get('/dashboard', [CompanyController::class, 'dashboard']);

#region User
Route::get('/User/Index',[UserDetailsController::class,'userdetails']);
Route::get('/User/Info',[UserDetailsController::class,'userinfo']);
Route::get('/User/Register',[UserDetailsController::class,'userregister']);
Route::post('/User/RegisterAction',[UserDetailsController::class,'userregisteraction']);
#endregion

#region tables related
Route::get('/Table/TableGroups',[TableController::class,'TGList']);
Route::get('/Table/TableGroupsInfo',[TableController::class,'TGInfo']);
Route::get('/Table/TableGroupsDelete',[TableController::class,'TGDelete']);

Route::get('/Table/TableDetails',[TableController::class,'TDList']);
Route::get('/Table/TableDetailsStatus',[TableController::class,'TDStatus']);
Route::get('/Table/TableDetailCreate',[TableController::class,'TDCreate']);
Route::post('/Table/TableDetailCreateAction',[TableController::class,'TDCreateAction']);

Route::get('/Table/TableAddInTrans',[TableController::class,'PTDlist']);
#endregion

#region item related
Route::get('/Item/ItemGroups',[ItemController::class,'IGList']);
Route::get('/Item/ItemGroupCreate',[ItemController::class,'IGCreate']);
Route::post('/Item/ItemGroupCreateAction',[ItemController::class,'IGCreateAction']);
Route::get('/Item/ItemDetails',[ItemController::class,'IMList']);
Route::get('/Item/ItemMasterCreate',[ItemController::class,'IMCreate']);
Route::post('/Item/ItemMasterCreateAction',[ItemController::class,'IMCreateAction']);
Route::get('/Item/ItemMasterUpdate',[ItemController::class,'IMUpdate']);
Route::post('/Item/ItemMasterUpdateAction',[ItemController::class,'IMUpdateAction']);
#endregion

#region Order Related
Route::get('/Order/OrderAdd',[OrderController::class,'OTCreate']);
Route::post('/Order/OrderAddAction',[OrderController::class,'OTCreateAction']);
Route::get('/Order/PendingOrderList',[OrderController::class,'OTList']);
Route::get('/Order/CompleteOrderList',[OrderController::class,'CompleteOTListPending']);
Route::get('/Order/ChangeStatus',[OrderController::class,'changestatus']);

Route::get('/Order/InvoiceList',[OrderController::class,'InvoiceList']);
Route::get('/Order/Invoice',[OrderController::class,'InvoiceCreate']);
#endregion
