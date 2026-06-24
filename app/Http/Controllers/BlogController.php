<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Category;
use Illuminate\Http\Request;

class BlogController extends Controller
{

    public function index()
    {
        return view('admin.blog.index', ['blogs' => Blog::all()]);
    }


    public function create()
    {
        return view('admin.blog.create', ['categories' => Category::all()]);
    }


    public function store(Request $request)
    {
        $request->validate([
            'category_id' => 'required',
            'name'        => 'required',
        ]);

        Blog::storeData($request);
        flash()->success('Blog Create Successfully');
        return back();
    }

    public function show(Blog $blog)
    {
        return view('admin.blog.detail', ['blog' => $blog]);
    }

    
    public function edit(Blog $blog)
    {
        return view('admin.blog.edit', ['blog' => $blog, 'categories' => Category::all()]);
    }


    public function update(Request $request, Blog $blog)
    {
        $request->validate([
            'category_id' => 'required',
            'name'        => 'required',
        ]);

        Blog::updateData($request, $blog->id);
        flash()->success('Blog Update Successfully');
        return redirect()->route('blog.index');
    }

    public function destroy(Blog $blog)
    {
        Blog::deleteData($blog->id);
        flash()->warning('Blog Delete Successfully');
        return back();
    }
}
