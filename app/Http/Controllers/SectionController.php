<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\Section;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\StoreSectionRequest;
use App\Http\Requests\UpdateSectionRequest;

class SectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(!Auth::user()->can('index section')){
            return  abort(403, 'Unauthorized access this action');
            }

        $sections = Section::all();
        return view('sections.sections',compact('sections'));
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
     * @param  \App\Http\Requests\StoreSectionRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSectionRequest $request)
    {

        if(!Auth::user()->can('store section')){
            return  abort(403, 'Unauthorized access this action');
            }

        Section::create([
            'section_name'=>  $request->section_name,
            'description'=>   $request->description,
            'Created_by'=>    Auth::user()->id,
        ]);
         
        session()->flash('Add','تم اضافة القسم بنجاح ');
        return redirect('/sections/index');   
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Section  $section
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function edit(Section $section)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSectionRequest  $request
     * @param  \App\Models\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSectionRequest $request)
    {

        if(!Auth::user()->can('update section')){
            return  abort(403, 'Unauthorized access this action');
            }


        Section::where('id', $request->id)
        ->update(['section_name' => $request->section_name,'description' => $request->description]);
        session()->flash('edit','update success');
        return redirect('/sections/index');  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {

        if(!Auth::user()->can('destroy section')){
            return  abort(403, 'Unauthorized access this action');
            }


        $request->validate([
            'id' => 'required|exists:sections,id',
        ]);
        

        Section::where('id', $request->id)->delete();

        session()->flash('delete','delete success');
        return redirect('/sections/index');  

    }
}
