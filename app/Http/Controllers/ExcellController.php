<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\InvoiceExport;
use App\Http\Controllers\InvoiceImport;

class ExcellController extends Controller
{
    




    public function export() 
    {
        if(!Auth::user()->can('export invoice')){
            return  abort(403, 'Unauthorized access this action');
            }

        return Excel::download( new InvoiceExport , 'invoices.xlsx');
    }





    public function import(Request $request)
    {
        if(!Auth::user()->can('import invoice')){
            return  abort(403, 'Unauthorized access this action');
            }

        $file = $request->file('file');

        Excel::import(new InvoiceImport, $file);

        // You can add any additional logic after the import if needed

        return redirect()->back()->with('success', 'Invoices imported successfully.');
    }

}
