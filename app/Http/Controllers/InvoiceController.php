<?php

namespace App\Http\Controllers;
use App\Models\Invoice;
use App\Models\Section;
use Illuminate\Http\Request;
use App\Models\invoice_details;
use App\Models\invoice_attachment;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StoreinvoiceRequest;
use App\Http\Requests\UpdateinvoiceRequest;

class InvoiceController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('permission:index invoice')->only(['index', 'show']);
    //     $this->middleware('permission:create invoice')->only(['create', 'store']);
    //     $this->middleware('permission:edit invoice')->only(['edit', 'update']);
    //     $this->middleware('permission:delete invoice')->only(['destroy']);
    //     $this->middleware('permission:show invoice')->only(['show']);
    //     $this->middleware('permission:updateStatus_show invoice')->only(['updateStatus_show']);
    // }

    // public $AuthUser;
    
    // public function __construct()
    // {
    //     Auth::user()=Auth::user();
    // }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        
        
        if(!Auth::user()->can('index invoice')){
            return  abort(403, 'Unauthorized access this action');
            }

        $invoices = Invoice::all();

        return view('invoices.invoices',compact('invoices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(!Auth::user()->can('create invoice')){
            return  abort(403, 'Unauthorized access this action');
            }

        $sections = Section::all();

        return view('invoices.add_invoice',compact('sections'));


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreinvoiceRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if(!Auth::user()->can('store invoice')){
            return  abort(403, 'Unauthorized access this action');
            }
        // Start a new transaction
        DB::beginTransaction();
    
        try {
            $newInvoice = Invoice::create([
                'invoice_number' => $request->invoice_number,
                'invoice_Date' => $request->invoice_Date,
                'Due_date' => $request->Due_date,
                'product' => $request->product,
                'section_id' => $request->Section,
                'Amount_collection' => $request->Amount_collection,
                'Amount_Commission' => $request->Amount_Commission,
                'Discount' => $request->Discount,
                'Value_VAT' => $request->Value_VAT,
                'Rate_VAT' => $request->Rate_VAT,
                'Total' => $request->Total,
                'Status' => 'غير مدفوعة',
                'Value_Status' => 2,
                'note' => $request->note,
            ]);
    
            // Call the method to store the invoice file
            Invoice::SotreInvoiceFile($request);
    
            // Commit the transaction
            DB::commit();
    
            session()->flash('Add', 'تم اضافة المنتج بنجاح');
            return redirect('/invoices/index');
        } catch (\Exception $e) {
            // Something went wrong, rollback the SotreInvoiceFile operation
            DB::rollback();
    
            // Handle the error, you can log or display a message
            // For example: Log::error($e->getMessage());
            session()->flash('Error', 'حدث خطأ أثناء إضافة المنتج');
    
            return redirect()->back()->withInput();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function show($invoice)
    {
        if(!Auth::user()->can('show invoice')){
            return  abort(403, 'Unauthorized access this action');
            }
            
       $invoices=Invoice::where('id', $invoice)->first();

        return view('invoices.Print_invoice',compact('invoices'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function edit(Invoice $invoice)
    {
        if(!Auth::user()->can('edit invoice')){
            return  abort(403, 'Unauthorized access this action');
            }
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateinvoiceRequest  $request
     * @param  \App\Models\invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateinvoiceRequest $request)
    {
        if(!Auth::user()->can('update invoice')){
            return  abort(403, 'Unauthorized access this action');
            }

        Invoice::where('id', $request->id)->update([
            'invoice_name'=>  $request->invoice_name,
            'description'=>   $request->description,
            'section_id'=>    $request->section_id,
        ]);
         
         session()->flash('edit','update success');
        return redirect('/invoices/index');   
    }


    public function updateStatus_show( $id)
    {
        if(!Auth::user()->can('updateStatus_show invoice')){
            return  abort(403, 'Unauthorized access this action');
            }

        Invoice::where('id',$id)->update([
            'Status'=> 'مدفوع',
            'Value_Status'=>1,
        ]);
         
         session()->flash('edit','updateStatus_show success');
        return redirect('/invoices/index');   
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $request->validate([
            'invoice_id' => 'required|exists:invoices,id',
        ]);


        if(!Auth::user()->can('delete invoice')){
        return  abort(403, 'Unauthorized access this action');
        }

        Invoice::where('id', $request->invoice_id)->forceDelete();
        session()->flash('delete','delete success');
        return redirect('/invoices/index'); 

 

    }




    
}