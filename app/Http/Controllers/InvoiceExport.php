<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Http\Resources\InvoiceResource;
use Maatwebsite\Excel\Concerns\FromCollection;

class InvoiceExport implements FromCollection
{
    public function collection()
    {
        return InvoiceResource::collection(Invoice::all());

    }
}
