@extends('website.master')
@section('title')
    Complete Order
@endsection
@section('body')
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">

            <div class="checkout__form">
                <h4 class=" text-success text-center">Complete Order</h4>

                <div class="row">
                    <div class="col-12">

                        <div class="card card-body">
                            <p class=" text-center text-success my-3">{{session('message')}}</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
