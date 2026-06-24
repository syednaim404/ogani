<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
     public function index()
    {
        return view('admin.category.index', ['categories' => Category::all()]);
    }
    
    public function create()
    {
        return view('admin.category.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Category::storeData($request);
        flash()->success('Category Created Successfully!');
        return redirect()->route('category.create');
    }

    public function show(Category $category)
    {
        //
    }

    public function edit(Category $category)
    {
        return view('admin.category.edit', ['category' => $category]);
    }

    public function update(Request $request, Category $category)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Category::updateData($request, $category->id);
        flash()->success('Category Update Successfully!');
        return redirect()->route('category.index');
    }

    public function destroy(Category $category)
    {
        Category::deleteData($category->id);
        flash()->warning('Category Delete Successfully!');
        return redirect()->route('category.index');
    }
}
