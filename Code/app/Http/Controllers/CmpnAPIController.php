<?php
namespace App\Http\Controllers;
use App\Models\tbl_company;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;

class CmpnAPIController extends Controller
{
    public function index()
    {
        $data = tbl_company::all();
        $headers = [
            'Cache-Control' => 'no-cache, must-revalidate',
            'Content-Type' => 'application/json',
            // Add more headers as needed
        ];
        Log::info('This is an informational message.');
        return response()->json($data, 200, $headers);
    }

}
