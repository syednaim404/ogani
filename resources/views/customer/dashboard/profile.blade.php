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
                            <h4 class="mb-3">My Profile</h4>

                            <form action="{{route('customer.update.profile', $customer->id)}}" method="post" class="p-4">
                                @csrf

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Full Name</label></div>
                                    <div class="col-md-9">
                                        <input type="text" name="name" value="{{$customer->name}}" class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Email</label></div>
                                    <div class="col-md-9">
                                        <input type="email" name="email" value="{{$customer->email}}" class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Mobile</label></div>
                                    <div class="col-md-9">
                                        <input type="number" name="mobile" value="{{$customer->mobile}}" class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Address</label></div>
                                    <div class="col-md-9">
                                        <input type="text" name="address" value="{{$customer->address}}" class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label>Date Of Birth</label></div>
                                    <div class="col-md-9">
                                        <input type="text" name="date_of_birth" value="{{$customer->date_of_birth}}" class=" form-control">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3"><label></label></div>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-success">Update Profile</button>
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
