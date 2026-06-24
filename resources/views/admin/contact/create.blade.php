@extends('admin.master')
@section('title')
    Create Contact
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Contact Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Contact</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Contact</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Contact Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{route('contact.store')}}" method="post" class="form-horizontal">
                        @csrf



                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Email</label>
                            <div class="col-md-9">
                                <input type="email" name="email" placeholder="Enter Email" class="form-control py-3">

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Mobile</label>
                            <div class="col-md-9">
                                <input type="text" name="mobile" placeholder="Enter Mobile Number"
                                    class="form-control py-3">

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Open Time</label>
                            <div class="col-md-9">
                                <input type="text" name="open_time" placeholder="Enter Open Time"
                                    class="form-control py-3">

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Map Link</label>
                            <div class="col-md-9">
                                <input type="text" name="map_link" placeholder="Enter Map Link"
                                    class="form-control py-3">

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Address</label>
                            <div class="col-md-9">
                                <textarea name="address" placeholder="Enter Address" class="form-control"></textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label for="published" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="status" id="published" value="1" checked
                                        style="cursor: pointer;">Published
                                </label>
                                <label for="unpublished" style="cursor: pointer;">
                                    <input type="radio" name="status" id="unpublished" value="0"
                                        style="cursor: pointer;">Unpublished
                                </label>
                            </div>
                        </div>

                        <button type="submite" class="btn btn-primary">Create Contact</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
