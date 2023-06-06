<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArchiveInvoices extends Controller
{

    public function index()
    {

        if(!Auth::user()->can('index archive')){
            return  abort(403, 'Unauthorized access this action');
            }

        $invoices = Invoice::onlyTrashed()->get();

        return view('invoices.Archive_Invoices',compact('invoices'));
    }




    public function restore(Request $request)
    {

        if(!Auth::user()->can('restore archive')){
            return  abort(403, 'Unauthorized access this action');
            }


        Invoice::withTrashed()
        ->where('id', $request->invoice_id)
        ->restore();

        session()->flash('delete','restore success');
        return redirect('/archive/index');  

    }


    public function trashed(Request $request)
    {

        if(!Auth::user()->can('trashed archive')){
            return  abort(403, 'Unauthorized access this action');
            }

            
        $request->validate([
            'invoice_id' => 'required|exists:invoices,id',
        ]);
        


        Invoice::where('id', $request->invoice_id)->delete();
        
        session()->flash('delete','delete success');
        return redirect('/invoices/index');  

    }



}
