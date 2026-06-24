@extends('admin.master')
@section('title')
    Blog Detail
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Blog Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Blog</a></li>
                <li class="breadcrumb-item"><a href="{{ route('blog.index') }}">Manage Blog</a></li>
                <li class="breadcrumb-item active" aria-current="page">Detail</li>
            </ol>
        </div>
    </div>

    <!-- body -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">All Blog Detail</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom">
                            <tr>
                                <th>ID</th>
                                <td>{{ $blog->id }}</td>
                            </tr>

                            <tr>
                                <th>Category Name</th>
                                <td>{{ $blog->category->name }}</td>
                            </tr>
                            <tr>
                                <th>Blog Name</th>
                                <td>{{ $blog->name }}</td>
                            </tr>
                            <tr>
                                <th>Description</th>
                                <td>{{ $blog->description }}</td>
                            </tr>

                            <tr>
                                <th>Long Description</th>
                                <td>{!! $blog->long_description !!}</td>
                            </tr>

                            <tr>
                                <th>Blog Image</th>
                                <td><img src="{{ asset($blog->image) }}" alt="{{ $blog->name }}" height="60">
                                </td>
                            </tr>

                            <tr>
                                <th>Tages</th>
                                <td>{{ $blog->tages }}</td>
                            </tr>

                             <tr>
                                <th>Facebook</th>
                                <td>{{ $blog->facebook }}</td>
                            </tr>

                             <tr>
                                <th>Twitter</th>
                                <td>{{ $blog->twitter }}</td>
                            </tr>
                             <tr>
                                <th>Instagram</th>
                                <td>{{ $blog->instagram }}</td>
                            </tr>
                             <tr>
                                <th>Pinterest</th>
                                <td>{{ $blog->pinterest }}</td>
                            </tr>

                            <tr>
                                <th>Status</th>
                                <td>{{$blog->status == 1 ? 'Published' : 'Unpublished'}}</td>
                                   
                            </tr>

                        </table>
                    </div>
                    <a href="{{route('blog.edit', $blog->id)}}" class="btn btn-primary mt-3">Edit Blog</a>
                    <a href="{{route('blog.index')}}" class="btn btn-gray mt-3">Back</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
