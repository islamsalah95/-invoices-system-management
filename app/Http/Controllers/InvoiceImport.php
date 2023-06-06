<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Invoice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;

class InvoiceImport implements ToModel
{

    public function model(array $row)
    {
        return new Invoice([
           'invoice_number' =>$row[0],
           'invoice_Date' => $row[1],
           'Due_date' =>$row[2],
           'product' => $row[3],
           'section_id' =>$row[4],
           'Amount_collection' => $row[5],
           'Amount_Commission' =>$row[6],
           'Discount' =>$row[7],
           'Value_VAT' => $row[8],
           'Rate_VAT' => $row[9],
           'Total' =>$row[10],
           'Status' => $row[11],
           'Value_Status' =>$row[12],
           'note' => $row[13],
        ]);
    }
}