@extends('admin.master')
@section('title')
    Create Banner
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Banner Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Banner</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Banner</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Banner Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('banner.store') }}" method="post" enctype="multipart/form-data" class="form-horizontal">
                        @csrf
                        
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Title</label>
                            <div class="col-md-9">
                                <input type="text" name="title" placeholder="Enter Banner Title"
                                    class="form-control py-3">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Banner Name</label>
                            <div class="col-md-9">
                                <input type="text" name="name" placeholder="Enter Banner Name"
                                    class="form-control py-3">
                                @error('name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea name="description" placeholder="Enter Banner Description" class="form-control"></textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="" class="col-md-3 form-label">Banner Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200" accept="image/*" />
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

                        <button type="submite" class="btn btn-primary">Create Banner</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
