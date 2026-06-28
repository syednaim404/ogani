@extends('admin.master')
@section('title')
    Edit Coupon
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
                <li class="breadcrumb-item active" aria-current="page">Edit Coupon</li>
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
                    <form action="{{ route('coupon.update', $coupon->id) }}" method="post" class="form-horizontal">
                        @csrf
                        @method('PUT')

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Coupon Code</label>
                            <div class="col-md-9">
                                <input type="text" name="code" value="{{$coupon->code}}" placeholder="Enter Coupon Code"
                                    class="form-control py-3">
                                @error('code')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Discount Type</label>
                            <div class="col-md-9">
                                <input type="text" name="discount_type"value="{{$coupon->discount_type}}" placeholder="Enter Discount Type"
                                    class="form-control py-3">
                                @error('discount_type')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror

                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Discount Value</label>
                            <div class="col-md-9">
                                <input type="number" name="discount_value" value="{{$coupon->discount_value}}" placeholder="Enter Discount Value"
                                    class="form-control py-3">
                                @error('discount_value')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror

                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Usage Limit</label>
                            <div class="col-md-9">
                                <input type="number" name="usage_limit" value="{{$coupon->usage_limit}}" placeholder="Enter Using Limit "
                                    class="form-control py-3">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Used Count</label>
                            <div class="col-md-9">
                                <input type="number" name="used_count" value="{{$coupon->used_count}}" placeholder="Enter Using Limit "
                                    class="form-control py-3">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Expiry Date</label>
                            <div class="col-md-9">
                                <input type="date" name="expiry_date" value="{{$coupon->expiry_date}}" placeholder="Enter Expiry Date"
                                    class="form-control py-3">
                                @error('expiry_date')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Minimum Order Amount</label>
                            <div class="col-md-9">
                                <input type="number" name="minimum_order_amount" value="{{$coupon->minimum_order_amount}}" placeholder="Minimum Order Amount"
                                    class="form-control py-3">

                            </div>
                        </div>


                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label for="published" class="me-3" style="cursor: pointer;">
                                    <input type="radio" name="status" id="published" value="1"
                                        {{ $coupon->status == 1 ? 'checked' : '' }} style="cursor: pointer;">Published
                                </label>
                                <label for="unpublished" style="cursor: pointer;">
                                    <input type="radio" name="status" id="unpublished" value="0"
                                        {{ $coupon->status == 0 ? 'checked' : '' }} style="cursor: pointer;">Unpublished
                                </label>
                            </div>
                        </div>

                        <button type="submite" class="btn btn-primary">Update Coupon</button>
                        <a href="{{route('coupon.index')}}" class="btn btn-gray">Cancle</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
