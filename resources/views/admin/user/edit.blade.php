@extends('admin.master')
@section('title')
    Create User
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">User Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">User</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit User</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">User Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('user.update', $user->id) }}" method="post" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">User Name</label>
                            <div class="col-md-9">
                                <input type="text" name="name" value="{{ $user->name }}"
                                    placeholder="Enter User Name" class="form-control py-3">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Email</label>
                            <div class="col-md-9">
                                <input type="email" name="email" value="{{ $user->email }}"
                                    placeholder="Enter User Email" class="form-control py-3">
                                @error('email')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Password</label>
                            <div class="col-md-9">
                                <input type="password" name="password" placeholder="******" class="form-control py-3">
                            </div>
                        </div>

                      

                        

                        <div class="row mb-4">
                            <label for="" class="col-md-3 form-label">User Image</label>
                            <div class="col-md-9">
                                <input type="file" name="profile_photo_path" class="dropify" data-height="200"
                                    accept="image/*" />
                                <img src="{{ asset($user->profile_photo_path) }}" alt="User Photo" height="60"
                                    class="my-2">
                            </div>
                        </div>


                        <button type="submite" class="btn btn-primary">Update User</button>
                        <a href="{{ route('user.index') }}" class="btn btn-gray">Cancle</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
