<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreinvoiceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'invoice_number'=>'required',
            'invoice_Date'=>'required',
            'Due_date'=>'required',
            'product'=>'required',
            'section_id'=>'required',
            'Amount_collection'=>'required',
            'Amount_Commission'=>'required',
            'Discount'=>'required',
            'Value_VAT'=>'required',
            'Rate_VAT'=>'required',
            'Total'=>'required',
            'Status'=>'required',
            'Value_Status'=>'required',
            'note'=>'required',
            'Payment_Date'=>'required',
        ];
    }
}
