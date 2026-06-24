<?php

namespace App\Http\Controllers;

use App\Models\Header;
use Illuminate\Http\Request;

class HeaderController extends Controller
{
      public function index()
    {
        return view('admin.header.index', ['headers' => Header::all()]);
    }

    public function create()
    {
        return view('admin.header.create');
    }

    public function store(Request $request)
    {
        Header::storeData($request);
        flash()->success('Header Created Successfully!');
        return redirect()->route('header.create');
    }

    public function show(Header $header)
    {
        //
    }

    public function edit(Header $header)
    {
        return view('admin.header.edit', ['header' => $header]);
    }

    public function update(Request $request, Header $header)
    {
        Header::updateData($request, $header->id);
        flash()->success('Header Update Successfully!');
        return redirect()->route('header.index');
    }

    public function destroy(Header $header)
    {
        Header::deleteData($header->id);
        flash()->warning('Header Delete Successfully!');
        return redirect()->route('header.index');
    }
}
