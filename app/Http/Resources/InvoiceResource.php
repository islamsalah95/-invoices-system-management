<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class InvoiceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'invoice_number'=>$this->invoice_number,
            'invoice_Date'=>$this->invoice_Date,
            'Due_date'=>$this->Due_date,
            'product'=>$this->product,
            'section_id'=>$this->section_id,
            'Amount_collection'=>$this->Amount_collection,
            'Amount_Commission'=>$this->Amount_Commission,
            'Discount'=>$this->Discount,
            'Value_VAT'=>$this->Value_VAT,
            'Rate_VAT'=>$this->Rate_VAT,
            'Total'=>$this->Total,
            'Status'=>$this->Status,
            'Value_Status'=>$this->Value_Status,
            'note'=>$this->note,
            'Payment_Date'=>$this->Payment_Date,
            'deleted_at'=>$this->deleted_at,
            'created_at'=>$this->created_at,
            'updated_at'=>$this->updated_at,
        ];
    }
}
