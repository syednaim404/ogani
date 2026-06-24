<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index()
    {
        return view('admin.brand.index', ['brands' => Brand::all()]);
    }

    public function create()
    {
        return view('admin.brand.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Brand::storeData($request);
        flash()->success('Brand Created Successfully!');
        return redirect()->route('brand.create');
    }

    public function show(Brand $brand)
    {
        //
    }

    public function edit(Brand $brand)
    {
        return view('admin.brand.edit', ['brand' => $brand]);
    }

    public function update(Request $request, Brand $brand)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Brand::updateData($request, $brand->id);
        flash()->success('Brand Update Successfully!');
        return redirect()->route('brand.index');
    }

    public function destroy(Brand $brand)
    {
        Brand::deleteData($brand->id);
        flash()->warning('Brand Delete Successfully!');
        return redirect()->route('brand.index');
    }
}
