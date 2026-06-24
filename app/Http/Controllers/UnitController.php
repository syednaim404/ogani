<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.unit.index', ['units' => Unit::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.unit.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Unit::storeData($request);
        flash()->success('Unit Created Successfully!');
        return redirect()->route('unit.create');
    }

    /**
     * Display the specified resource.
     */
    public function show(Unit $unit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Unit $unit)
    {
        return view('admin.unit.edit', ['unit' => $unit]);
         
    }

    public function update(Request $request, Unit $unit)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Unit::updateData($request, $unit->id);
        flash()->success('Unit Update Successfully!');
        return redirect()->route('unit.index');
    }

    public function destroy(Unit $unit)
    {
        Unit::deleteData($unit->id);
        flash()->warning('Unit Delete Successfully!');
        return redirect()->route('unit.index');
    }
}
