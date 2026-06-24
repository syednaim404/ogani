@extends('admin.master')
@section('title')
    Manage Product
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Product Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('product.index') }}">Product</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Product</li>
            </ol>
        </div>
    </div>

    <!-- body -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Product Detail</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                            <thead>
                                <tr>
                                    <th class="wd-15p border-bottom-0">#</th>
                                    <th class="wd-15p border-bottom-0">Category</th>
                                    <th class="wd-15p border-bottom-0">Product Name</th>
                                    <th class="wd-20p border-bottom-0">Selling Price</th>
                                    <th class="wd-20p border-bottom-0">Discount</th>
                                    <th class="wd-15p border-bottom-0">Image</th>
                                    <th class="wd-10p border-bottom-0">Featured</th>
                                    <th class="wd-10p border-bottom-0">Status</th>
                                    <th class="wd-25p border-bottom-0">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($products as $product)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $product->category->name }}</td>
                                        <td>{{ $product->name }}</td>
                                        <td>{{ $product->selling_price }}</td>
                                        <td>{{ $product->discount }}</td>
                                        <td><img src="{{ asset($product->image) }}" alt="{{ $product->name }}"
                                                height="50"></td>
                                        <td>
                                            @if ($product->featured == 1)
                                                <p>Featured</p>
                                            @else
                                                <p class="text-red">Not Featured</p>
                                            @endif
                                        </td>
                                        <td>
                                            @if ($product->status == 1)
                                                <p>Published</p>
                                            @else
                                                <p class="text-red">Unpublished</p>
                                            @endif
                                        </td>

                                        <td>
                                            <div class="d-flex gap-1">
                                                <a href="{{ route('product.show', $product->id) }}" class="btn btn-success"
                                                 title="Detail">
                                                    <i class="fa-solid fa-info-circle"></i>
                                                </a>
                                                <a href="{{ route('product.edit', $product->id) }}" class="btn btn-primary"
                                                    title="Edit">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                    </a>
                                                <form action="{{ route('product.destroy', $product->id) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger"
                                                     onclick="return confirm('Are You Sure? You Wont to Delete!')" title="Delete">
                                                        <i class="fa-solid fa-trash-can"></i>
                                                    </button>
                                                </form> 
                                            </div>
                                           
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
