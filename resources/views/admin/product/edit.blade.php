@extends('admin.master')
@section('title')
    Edit Product
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Product Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Product</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Product</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Edit Product Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('product.update', $product->id) }}" method="post" enctype="multipart/form-data" class="form-horizontal">
                        @csrf
                        @method('PUT')
                        
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Category Name</label>
                            <div class="col-md-9">
                                <select name="category_id"  class="form-control">
                                    <option disabled selected>-- Select Category --</option>
                                    @foreach ($categories as $category)
                                        <option value="{{$category->id}}" @selected($category->id == $product->category_id)>{{$category->name}}</option>
                                    @endforeach
                                </select>
                                @error('category_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror 
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Sub Category Name</label>
                            <div class="col-md-9">
                                <select name="sub_category_id"  class="form-control">
                                    <option disabled selected>-- Select Sub Category --</option>
                                    @foreach ($sub_categories as $sub_category)
                                        <option value="{{$sub_category->id}}" @selected($sub_category->id == $product->sub_category_id)>{{$sub_category->name}}</option>
                                    @endforeach
                                </select>
                                @error('sub_category_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror 
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Brand Name</label>
                            <div class="col-md-9">
                                <select name="brand_id" class="form-control">
                                    <option disabled selected>-- Select Brand --</option>
                                    @foreach ($brands as $brand)
                                        <option value="{{$brand->id}}" @selected($brand->id == $product->brand_id)>{{$brand->name}}</option>
                                    @endforeach
                                </select> 
                                @error('brand_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror 
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Unit Name</label>
                            <div class="col-md-9">
                                <select name="unit_id" class="form-control">
                                    <option disabled selected>-- Select Unit --</option>
                                    @foreach ($units as $unit)
                                        <option value="{{$unit->id}}" @selected($unit->id == $product->unit_id)>{{$unit->name}}</option>
                                    @endforeach
                                </select> 
                                @error('unit_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror 
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Product Name</label>
                            <div class="col-md-9">
                                <input type="text" name="name" value="{{$product->name}}" 
                                placeholder="Enter Product Name" class="form-control py-3">
                                @error('name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Product Price</label>
                            <div class="col-md-9">
                                <div class=" input-group">
                                    <input type="number" name="regular_price" value="{{$product->regular_price}}" 
                                    placeholder="Enter Regular Price" class="form-control py-3">
                                    <input type="number" name="selling_price" value="{{$product->selling_price}}" 
                                    placeholder="Enter Selling Price" class="form-control py-3">
                                    @error('selling_price')
                                        <span class="text-danger">{{ $message }}</span>
                                     @enderror

                                </div>
                            </div>
                        </div>

                         <div class="row mb-4">
                            <label class="col-md-3 form-label">Discount</label>
                            <div class="col-md-9">
                                <input type="number" name="discount" value="{{$product->discount}}" placeholder="Enter Discount" class="form-control py-3">
                            </div>
                        </div>

                          <div class="row mb-4">
                            <label class="col-md-3 form-label">Stock</label>
                            <div class="col-md-9">
                                <input type="number" name="stock" value="{{$product->stock}}" 
                                placeholder="Enter Stock" class="form-control py-3">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea name="description" placeholder="Enter Product Description" class="form-control">{{$product->description}}</textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Long Description</label>
                            <div class="col-md-9">
                                <textarea name="long_description" id="summernote" class="form-control">{!!$product->long_description!!}</textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="" class="col-md-3 form-label">Product Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200" accept="image/*" />
                                <img src="{{asset($product->image)}}" alt="{{$product->name}}" height="60" class="mt-1">
                            </div>
                        </div>

                        <div class="row mb-6">
                            <label for="" class="col-md-3 form-label">Thumbnail</label>
                            <div class="col-md-9">
                                <input type="file" name="thumbnail[]" multiple accept="image/*" class="dropify" data-height="200"/>
                                @foreach ($product->productThumbnails as $productThumbnail)
                                    <img src="{{asset($productThumbnail->image)}}" alt="Thumbnail" height="60" class="my-1">
                                @endforeach
                            </div>
                        </div>

                        <div class="row mb-4 ">
                            <label class="col-md-3 form-label">Featured Status</label>
                            <div class="col-md-9">
                                <label for="featured" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="featured" id="featured" value="1" {{$product->featured == 1 ? 'checked' : ''}} style="cursor: pointer;">Featured 
                                </label>
                                <label for="notFeatured" style="cursor: pointer;">
                                    <input type="radio" name="featured" id="notFeatured" value="0" {{$product->featured == 0 ? 'checked' : ''}} style="cursor: pointer;">
                                    Not Featured
                                </label>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label for="published" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="status" id="published" value="1" {{$product->status == 1 ? 'checked' : ''}} style="cursor: pointer;">Published
                                </label>
                                <label for="unpublished" style="cursor: pointer;">
                                    <input type="radio" name="status" id="unpublished" value="0" {{$product->status == 0 ? 'checked' : ''}} style="cursor: pointer;">Unpublished
                                </label>
                            </div>
                        </div>

                        <button type="submite" class="btn btn-primary">Update Product</button>
                        <a href="{{route('product.index')}}" class="btn btn-gray">Cancle</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
