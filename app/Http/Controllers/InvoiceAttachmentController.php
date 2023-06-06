<?php

namespace App\Http\Controllers;

use App\Models\invoice_attachment;
use App\Http\Requests\Storeinvoice_attachmentRequest;
use App\Http\Requests\Updateinvoice_attachmentRequest;

class InvoiceAttachmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\Storeinvoice_attachmentRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Storeinvoice_attachmentRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\invoice_attachment  $invoice_attachment
     * @return \Illuminate\Http\Response
     */
    public function show(invoice_attachment $invoice_attachment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\invoice_attachment  $invoice_attachment
     * @return \Illuminate\Http\Response
     */
    public function edit(invoice_attachment $invoice_attachment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Updateinvoice_attachmentRequest  $request
     * @param  \App\Models\invoice_attachment  $invoice_attachment
     * @return \Illuminate\Http\Response
     */
    public function update(Updateinvoice_attachmentRequest $request, invoice_attachment $invoice_attachment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\invoice_attachment  $invoice_attachment
     * @return \Illuminate\Http\Response
     */
    public function destroy(invoice_attachment $invoice_attachment)
    {
        //
    }
}
