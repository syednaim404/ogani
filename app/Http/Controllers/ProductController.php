<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductThumbnail;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return view('admin.product.index', ['products' => Product::all()]);
    }

    public function create()
    {
        return view('admin.product.create', [
            'categories'     => Category::all(),
            'sub_categories' => SubCategory::all(),
            'brands'         => Brand::all(),
            'units'          => Unit::all(),
        ]);
    }

    public function store(Request $request)
    {
        $request->validate(
            [
                'category_id'     => 'required',
                'sub_category_id' => 'required',
                'brand_id'        => 'required',
                'unit_id'         => 'required',
                'name'            => 'required',
                'selling_price'   => 'required',
            ],
            [
                'category_id.required'     => 'This field is required selact a category.',
                'sub_category_id.required' => 'This field is required selact a sub category.',
                'brand_id.required'        => 'This field is required selact a brand.',
                'unit_id.required'         => 'This field is required selact a unit.',
            ]
        );

        $productId = Product::storeData($request);
        if ($request->file('thumbnail')) {
            ProductThumbnail::storeThumbnail($request->file('thumbnail'), $productId);
        }
        flash()->success('Product Created Successfully!');
        return redirect()->route('product.create');
    }

    public function show(Product $product)
    {
        return view('admin.product.detail', ['product' => $product]);
    }

    public function edit(Product $product)
    {
        return view('admin.product.edit', [
            'product'        => $product,
            'categories'     => Category::all(),
            'sub_categories' => SubCategory::all(),
            'brands'         => Brand::all(),
            'units'          => Unit::all(),
        ]);
    }

    public function update(Request $request, Product $product)
    {
        $request->validate(
            [
                'category_id'     => 'required',
                'sub_category_id' => 'required',
                'brand_id'        => 'required',
                'unit_id'         => 'required',
                'name'            => 'required',
                'selling_price'   => 'required',
            ],
            [
                'category_id.required'     => 'This field is required selact a category.',
                'sub_category_id.required' => 'This field is required selact a sub category.',
                'brand_id.required'        => 'This field is required selact a brand.',
                'unit_id.required'         => 'This field is required selact a unit.',
            ]
        );
        Product::updateData($request, $product->id);
        if ($request->file('thumbnail')) {
            ProductThumbnail::updatedThumbnail($request->file('thumbnail'), $product->id);
        }
        flash()->success('Product Update Successfully!');
        return redirect()->route('product.index');
    }

    public function destroy(Product $product)
    {
        Product::deleteData($product->id);
        ProductThumbnail::deleteThumbnail($product->id);
        flash()->warning('Product Delete Successfully!');
        return redirect()->route('product.index');
    }

    public function getSubCategory()
    {
        $categoryId     = $_GET['nayem'];
        $subCategories  = SubCategory::where('category_id', $categoryId)->get();
        return response()->json($subCategories);
    }
}
