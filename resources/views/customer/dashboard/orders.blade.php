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
                            <h4 class="mb-3">My Order</h4>

                            <table class=" table table-bordered table-hover">
                                <tr>
                                 
                                    <th>Order Date</th>
                                    <th>Order Total</th>
                                    <th>Tax Total</th>
                                    <th>Delivery Address</th>
                                    <th>Order Status</th>
                               
                                </tr>
                                @foreach ($orders as $item)
                                    <tr>
                                    
                                    <td>{{$item->order_date}}</td>
                                    <td>{{$item->order_total}}</td>
                                    <td>{{$item->tax_total}}</td>
                                    <td>{{$item->delivery_address}}</td>
                                    <td>{{$item->order_status}}</td>
                                </tr>
                                @endforeach
                                
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
