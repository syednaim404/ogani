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
                            <h4>Hello {{Session::get('customer_name')}}</h4>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
