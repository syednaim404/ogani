<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function index()
    {
        return view('admin.sub-category.index', ['sub_categories' => SubCategory::all()]);
    }

    public function create()
    {
        return view('admin.sub-category.create', ['categories' => Category::all()]);
    }

    public function store(Request $request)
    {
        $request->validate(
            [
                'category_id' => 'required',
                'name'        => 'required',
            ],
            [
                'category_id.required' => 'This field is required selact a category.',
            ]
        );

        SubCategory::storeData($request);
        flash()->success('Sub Category Created Successfully!');
        return redirect()->route('sub-category.create');
    }

    public function show(SubCategory $subCategory)
    {
        //
    }

    public function edit(SubCategory $subCategory)
    {
        return view('admin.sub-category.edit', ['sub_category' => $subCategory, 'categories' => Category::all()]);
    }

    public function update(Request $request, SubCategory $subCategory)
    {
        $request->validate(
            [
                'category_id' => 'required',
                'name'        => 'required',
            ],
            [
                'category_id.required' => 'This field is required selact a category.',
            ]
        );
        SubCategory::updateData($request, $subCategory->id);
        flash()->success('Sub Category Update Successfully!');
        return redirect()->route('sub-category.index');
    }

    public function destroy(SubCategory $subCategory)
    {
        SubCategory::deleteData($subCategory->id);
        flash()->warning('Sub Category Delete Successfully!');
        return redirect()->route('sub-category.index');
    }

   
}
