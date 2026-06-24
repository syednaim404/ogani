@extends('admin.master')
@section('title')
    Edit Header
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Header Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Header</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Header</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Edit Header Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('header.update', $header->id) }}" method="post" enctype="multipart/form-data" class="form-horizontal">
                        @csrf
                        @method('PUT')

                         <div class="row mb-4">
                            <label for="" class="col-md-3 form-label">Header Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200" accept="image/*" />
                                <img src="{{ asset($header->image) }}" alt="Logo" height="70" class="my-2">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Mobile</label>
                            <div class="col-md-9">
                                <input type="text" name="mobile" value="{{ $header->mobile }}" placeholder="Enter Mobile Number" class="form-control py-3 ">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea name="description" placeholder="Enter Header Description" class="form-control">{{ $header->description }}</textarea>
                            </div>
                        </div>

                       

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label for="published" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="status" id="published" value="1" {{ $header->status == 1 ? 'checked' : '' }} 
                                    style="cursor: pointer;">Published
                                </label>
                                <label for="unpublished" style="cursor: pointer;">
                                    <input type="radio" name="status" id="unpublished" value="0"{{ $header->status == 0 ? 'checked' : '' }}
                                    style="cursor: pointer;">Unpublished
                                </label>
                            </div>
                        </div>

                        <button type="submite" class="btn btn-primary">Update Header</button>
                        
                        <a href="{{ route('header.index') }}" class="btn btn-gray">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /row -->
@endsection
