<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    public function index()
    {
        return view('website.banner.index', ['banners' => Banner::all()]);
    }

    public function create()
    {
        return view('website.banner.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Banner::storeData($request);
        flash()->success('Banner Created Successfully!');
        return redirect()->route('banner.create');
    }

    public function show(Banner $banner)
    {
        //
    }

    public function edit(Banner $banner)
    {
        return view('website.banner.edit', ['banner' => $banner]);
    }

    public function update(Request $request, Banner $banner)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Banner::updateData($request, $banner->id);
        flash()->success('Banner Update Successfully!');
        return redirect()->route('banner.index');
    }

    public function destroy(Banner $banner)
    {
        Banner::deleteData($banner->id);
        flash()->warning('Banner Delete Successfully!');
        return redirect()->route('banner.index');
    }
}
