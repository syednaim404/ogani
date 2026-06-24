<?php

namespace App\Http\Controllers;

use App\Models\Footer;
use Illuminate\Http\Request;

class FooterController extends Controller
{

    public function index()
    {
        return view('admin.footer.index', ['footers' => Footer::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.footer.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        Footer::storeData($request);
        flash()->success('Footer Created Successfully');
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Footer $footer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Footer $footer)
    {
        return view('admin.footer.edit', ['footer' => $footer]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Footer $footer)
    {
        Footer::updateData($request, $footer->id);
        flash()->success('Footer Update Successfully');
        return redirect()->route('footer.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Footer $footer)
    {
        Footer::deleteData($footer->id);
         
        flash()->warning('Footer Delete Successfully');
        return back();
    }
}
