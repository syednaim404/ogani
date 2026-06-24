@extends('admin.master')
@section('title')
    Create Courier
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Courier Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Courier</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Courier</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Courier Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{route('courier.update', $courier->id)}}" method="post" enctype="multipart/form-data" class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Courier Name</label>
                            <div class="col-md-9">
                                <input type="text" name="name" value="{{$courier->name}}" placeholder="Enter Courier Name"
                                    class="form-control py-3">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Courier Email</label>
                            <div class="col-md-9">
                                <input type="email" name="email" value="{{$courier->email}}" placeholder="Enter Courier Email"
                                    class="form-control py-3">
                                
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Courier Mobile</label>
                            <div class="col-md-9">
                                <input type="number" name="mobile" value="{{$courier->mobile}}" placeholder="Enter Courier Mobile Number"
                                    class="form-control py-3">
                                
                            </div>
                        </div>


                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Courier Address</label>
                            <div class="col-md-9">
                                <textarea name="address" placeholder="Enter Courier Address" class="form-control">{{$courier->address}}</textarea>
                            </div>
                        </div>

                         <div class="row mb-4">
                            <label for="" class="col-md-3 form-label">Courier Logo</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200" accept="image/*" />
                                <img src="{{asset($courier->image)}}" width="60" alt="">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label for="published" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="status" id="published" value="1" checked style="cursor: pointer;">Published
                                </label>
                                <label for="unpublished" style="cursor: pointer;">
                                    <input type="radio" name="status" id="unpublished" value="0" style="cursor: pointer;">Unpublished
                                </label>
                            </div>
                        </div>

                        <button type="submite" class="btn btn-primary">Update Courier</button>
                        <a href="{{route('courier.index')}}" class="btn btn-gray">Cancle</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
