@extends('admin.master')
@section('title')
    Product Detail
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
                <li class="breadcrumb-item"><a href="{{ route('product.index') }}">Manage Product</a></li>
                <li class="breadcrumb-item active" aria-current="page">Detail</li>
            </ol>
        </div>
    </div>

    <!-- body -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">All Product Detail</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom">
                            <tr>
                                <th>ID</th>
                                <td>{{ $product->id }}</td>
                            </tr>

                            <tr>
                                <th>Category Name</th>
                                <td>{{ $product->category->name }}</td>
                            </tr>

                            <tr>
                                <th>Sub Category Name</th>
                                <td>{{ $product->subCategory->name }}</td>
                            </tr>

                            <tr >
                                <th>Brand Name</th>
                                <td>{{ $product->brand->name }}</td>
                            </tr>

                            <tr >
                                <th>Unit Name</th>
                                <td>{{ $product->unit->name }}</td>
                            </tr>

                            <tr>
                                <th>Product Name</th>
                                <td>{{ $product->name }}</td>
                            </tr>
                            
                            <tr>
                                <th>Product Price</th>
                                <td>
                                    <b class="me-1">Regular Price:</b> {{ $product->regular_price }} <br>
                                    <b class="me-4">Selling Price:</b>{{ $product->selling_price }}
                                </td>
                            </tr>

                            <tr>
                                <th>Discount</th>
                                <td>{{ $product->discount }} %</td>
                            </tr>
                            <tr>
                                <th>Stock</th>
                                <td>{{ $product->stock }}</td>
                            </tr>

                            <tr>
                                <th>Description</th>
                                <td>{{ $product->description }}</td>
                            </tr>

                            <tr>
                                <th>Long Description</th>
                                <td>{!! $product->long_description !!}</td>
                            </tr>

                            <tr>
                                <th>Product Image</th>
                                <td><img src="{{ asset($product->image) }}" alt="{{ $product->name }}" height="60">
                                </td>
                            </tr>

                            <tr>
                                <th>Thumbnail</th>
                                <td>
                                    @foreach ($product->productThumbnails as $productThumbnail)
                                        <img src="{{ asset($productThumbnail->image) }}" alt="Thumbnail" height="60">
                                    @endforeach
                                </td>
                            </tr>
                            
                            <tr>
                                <th>Featured</th>
                                @if ($product->featured == 1)
                                    <td >Featured</td>
                                @else
                                    <td class="text-red">Not Featured</td>
                                @endif
                                
                            </tr>

                            <tr>
                                <th>Status</th>
                                @if ($product->status == 1)
                                    <td>Published</td>
                                @else
                                    <td class="text-red">Unpublished</td>
                                @endif
                            </tr>

                        </table>
                    </div>
                    <a href="{{route('product.edit', $product->id)}}" class="btn btn-primary mt-3">Edit Product</a>
                    <a href="{{route('product.index')}}" class="btn btn-gray mt-3">Back</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
