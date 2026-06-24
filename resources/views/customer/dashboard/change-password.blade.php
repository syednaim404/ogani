@extends('website.master')
@section('title')
    Customer Dashboard
@endsection
@section('body')
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">

            <div class="checkout__form">
                <h4 class=" text-success">My Dashboard</h4>

                <div class="row">
                    <div class="col-4">
                        @include('customer.includes.menu')
                    </div>

                    <div class="col-8">
                        <div class="card card-body">
                            <h4 class="mb-3">Update Password</h4>

                            <form action="{{ route('customer.update.password', $customer->id) }}" method="post"
                                class="p-4">
                                @csrf

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Current Password</label></div>
                                    <div class="col-md-9">
                                        <input type="password" name="current_password" placeholder="Enter Your Current Password"
                                            class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>New Password</label></div>
                                    <div class="col-md-9">
                                        <input type="password" name="new_password" placeholder="Enter New Password"
                                            class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Confirm Password</label></div>
                                    <div class="col-md-9">
                                        <input type="password" name="confirm_password" placeholder="Enter New Password Again"
                                            class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label></label></div>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-success">Update Password</button>
                                    </div>
                                </div>

                            </form>


                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
