<?php

namespace App\Http\Controllers;

use App\Models\invoice_details;
use App\Http\Requests\Storeinvoice_detailsRequest;
use App\Http\Requests\Updateinvoice_detailsRequest;

class InvoiceDetailsController extends Controller
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
     * @param  \App\Http\Requests\Storeinvoice_detailsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Storeinvoice_detailsRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\invoice_details  $invoice_details
     * @return \Illuminate\Http\Response
     */
    public function show(invoice_details $invoice_details)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\invoice_details  $invoice_details
     * @return \Illuminate\Http\Response
     */
    public function edit(invoice_details $invoice_details)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Updateinvoice_detailsRequest  $request
     * @param  \App\Models\invoice_details  $invoice_details
     * @return \Illuminate\Http\Response
     */
    public function update(Updateinvoice_detailsRequest $request, invoice_details $invoice_details)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\invoice_details  $invoice_details
     * @return \Illuminate\Http\Response
     */
    public function destroy(invoice_details $invoice_details)
    {
        //
    }
}
