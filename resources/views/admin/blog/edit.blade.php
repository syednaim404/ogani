@extends('admin.master')
@section('title')
    Create Footer
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Footer Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Footer</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Footer</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Footer Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('blog.update', $blog->id) }}" method="post" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Category Name</label>
                            <div class="col-md-9">
                                <select name="category_id" class="form-control">
                                    <option disabled selected>-- Select Category --</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}" @selected($blog->category_id == $category->id)>{{ $category->name }}</option>
                                    @endforeach
                                </select>
                                @error('category_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Name</label>
                            <div class="col-md-9">
                                <input type="text" name="name" value="{{$blog->name}}" placeholder="Enter Blog Name"
                                    class="form-control py-3">
                                @error('name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        

                        <div class="row mb-4">
                            <label for="" class="col-md-3 form-label">Blog Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200" accept="image/*" />
                                <img src="{{asset($blog->image)}}" alt="blog image" height="60" class="my-2">
                            </div>
                        </div>

                        
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Tages</label>
                            <div class="col-md-9">
                                <input type="text" name="tages" value="{{$blog->tages}}" placeholder="Enter Blog Tages"
                                    class="form-control py-3">
                            </div>
                        </div>
                        
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea name="description" placeholder="Enter Blog Description" class="form-control">{{$blog->description}}</textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Long Description</label>
                            <div class="col-md-9">
                                <textarea name="long_description" id="summernote" class="form-control">{!!$blog->long_description!!}</textarea>
                            </div>
                        </div>

                        
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Facebook URL</label>
                            <div class="col-md-9">
                                <input type="text" name="facebook" value="{{$blog->facebook}}" placeholder="Enter Facebook URL"
                                    class="form-control py-3">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Instagram URL</label>
                            <div class="col-md-9">
                                <input type="text" name="instagram" value="{{$blog->instagram}}" placeholder="Enter Instagram URL"
                                    class="form-control py-3">

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Twitter URL</label>
                            <div class="col-md-9">
                                <input type="text" name="twitter" value="{{$blog->twitter}}" placeholder="Enter Twitter URL"
                                    class="form-control py-3">

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Pinterest URL</label>
                            <div class="col-md-9">
                                <input type="text" name="pinterest" value="{{$blog->pinterest}}" placeholder="Enter Pinterest URL"
                                    class="form-control py-3">

                            </div>
                        </div>


                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label for="published" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="status" id="published" value="1" {{$blog->status == 1 ? 'checked' : ''}}
                                        style="cursor: pointer;">Published
                                </label>
                                <label for="unpublished" style="cursor: pointer;">
                                    <input type="radio" name="status" id="unpublished" value="0" {{$blog->status == 0 ? 'checked' : ''}}
                                        style="cursor: pointer;">Unpublished
                                </label>
                            </div>
                        </div>

                        <button type="submite" class="btn btn-primary">Update Footer</button>
                        <a href="{{route('blog.index')}}" class="btn btn-gray">Cancle</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
