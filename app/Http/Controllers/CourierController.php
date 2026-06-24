<?php

namespace App\Http\Controllers;

use App\Models\Courier;
use Illuminate\Http\Request;

class CourierController extends Controller
{

    public function index()
    {
        return view('admin.courier.index', [
            'couriers' => Courier::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.courier.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        Courier::storeData($request);
        flash()->success('Courier info save successfully');
        return redirect()->route('courier.create');
    }

    /**
     * Display the specified resource.
     */
    public function show(Courier $courier)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Courier $courier)
    {
        return view('admin.courier.edit', ['courier' => $courier]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Courier $courier)
    {
        Courier::updateData($request, $courier->id);
        flash()->success('Courier info update successfully');
        return redirect()->route('courier.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Courier $courier)
    {
        Courier::deleteData($courier->id);
        flash()->warning('Courier info delete successfully');
        return redirect()->route('courier.index');
    }
}
