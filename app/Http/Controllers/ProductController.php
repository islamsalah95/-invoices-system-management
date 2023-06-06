<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\Section;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StoreproductRequest;
use App\Http\Requests\UpdateproductRequest;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(!Auth::user()->can('index product')){
            return  abort(403, 'Unauthorized access this action');
            }


        $products = product::all();
        $sections = Section::all();

        return view('productss.products',compact('products','sections'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreproductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreproductRequest $request)
    {
        if(!Auth::user()->can('store product')){
            return  abort(403, 'Unauthorized access this action');
            }

        product::create([
            'Product_name'=>  $request->Product_name,
            'description'=>   $request->description,
            'section_id'=>    $request->section_id,
        ]);
         
        session()->flash('Add','تم اضافة المنتج بنجاح ');
        return redirect('/products/index');   
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!Auth::user()->can('show product')){
            return  abort(403, 'Unauthorized access this action');
            }
            
        $products = product::where("section_id", $id)->pluck("Product_name", "id");
        return json_encode($products);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateproductRequest  $request
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateproductRequest $request)
    {
        if(!Auth::user()->can('update product')){
            return  abort(403, 'Unauthorized access this action');
            }

        product::where('id', $request->id)->update([
            'Product_name'=>  $request->Product_name,
            'description'=>   $request->description,
            'section_id'=>    $request->section_id,
        ]);
         
         session()->flash('edit','update success');
        return redirect('/products/index');   
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        if(!Auth::user()->can('destroy product')){
            return  abort(403, 'Unauthorized access this action');
            }

        $request->validate([
            'id' => 'required|exists:products,id',
        ]);
        

        product::where('id', $request->id)->delete();

        session()->flash('delete','delete success');
        return redirect('/products/index');  

    }
}