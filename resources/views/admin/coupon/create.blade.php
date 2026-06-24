@extends('admin.master')
@section('title')
    Create Coupon
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Coupon Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Coupon</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Coupon</li>
            </ol>
        </div>
    </div>

    <!-- body  -->
    <div class="row row-deck">
        <div class="col-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Coupon Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('coupon.store') }}" method="post" class="form-horizontal">
                        @csrf

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Coupon Code</label>
                            <div class="col-md-9">
                                <input type="text" name="code" placeholder="Enter Coupon Code"
                                    class="form-control py-3">
                                @error('code')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Discount Amount</label>
                            <div class="col-md-9">
                                <input type="number" name="discount_amount" placeholder="Enter Discount Amount"
                                    class="form-control py-3">
                                @error('discount_amount')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Start Date</label>
                            <div class="col-md-9">
                                <input type="date" name="start_date" placeholder="Enter Start Date"
                                    class="form-control py-3">
                                @error('start_date')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">End Date</label>
                            <div class="col-md-9">
                                <input type="date" name="end_date" placeholder="Enter End Date"
                                    class="form-control py-3">
                                @error('end_date')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Usage Limit</label>
                            <div class="col-md-9">
                                <input type="number" name="usage_limit" placeholder="Enter Uaseg Limit"
                                    class="form-control py-3">

                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Used Count</label>
                            <div class="col-md-9">
                                <input type="number" name="used_count" placeholder="Enter Uaseg Limit"
                                    class="form-control py-3">
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

                        <button type="submite" class="btn btn-primary">Create Coupon</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
