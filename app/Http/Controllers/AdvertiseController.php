<?php

namespace App\Http\Controllers;

use App\Models\Advertise;
use Illuminate\Http\Request;

class AdvertiseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('website.advertise.index', ['advertises' => Advertise::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('website.advertise.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Advertise::storeData($request);
        flash()->success('Addvertise Create Succesfully!');
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Advertise $advertise)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Advertise $advertise)
    {
        return view('website.advertise.edit', ['advertise' => $advertise]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Advertise $advertise)
    {
        Advertise::updateData($request, $advertise->id);
        flash()->success('Advertise Update Succesfully!');
        return redirect()->route('advertise.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Advertise $advertise)
    {
        Advertise::deleteData($advertise->id);
        flash()->warning('Advertise Delete Successfully!');
        return redirect()->route('advertise.index');
    }
}
