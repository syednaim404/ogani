@extends('admin.master')
@section('title')
    Edit Order
@endsection
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Order Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('product.index') }}">Order</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Order</li>
            </ol>
        </div>
    </div>

    <!-- body -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Edut Order</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.order.update', $order->id) }}" method="post">
                        @csrf

                        <div class="row mb-3">
                            <label class="col-md-3">Order Total</label>
                            <div class="col-md-9">
                                <input type="text" class=" form-control" value="{{ $order->order_total }}" readonly>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-3">Customer Info</label>
                            <div class="col-md-9">
                                <input type="text" class=" form-control" value="{{ $order->customer->name }}" readonly>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-3">Delivery Address</label>
                            <div class="col-md-9">
                                <input type="text" name="delivery_address" class=" form-control"
                                    value="{{ $order->delivery_address }}">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-3">Oeder Status</label>
                            <div class="col-md-9">
                                <select name="order_status" class=" form-control">
                                    <option value="">-- Select Order Status --</option>
                                    <option value="Pending" @selected($order->order_status == 'Pending')>Pending</option>
                                    <option value="Processing" @selected($order->order_status == 'Processing')>Processing</option>
                                    <option value="Complete" @selected($order->order_status == 'Complete')>Complete</option>
                                    <option value="Cancel" @selected($order->order_status == 'Cancel')>Cancel</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-3">Courier Id</label>
                            <div class="col-md-9">
                                {{-- <select name="courier_id" class=" form-control">
                                    <option value="">-- Select Order Status --</option>
                                    <option value="1" @selected($order->courier_id == '1')>Stedfast</option>
                                    <option value="2" @selected($order->courier_id == '2')>SA Poribahan</option>
                                    <option value="3" @selected($order->courier_id == '3')>Pathao</option>
                                </select> --}}
                                <select name="courier_id" class=" form-control">
                                    <option value="">-- Select Order Status --</option>
                                    @foreach ($couriers as $courier)
                                    <option value="{{$courier->id}}" @selected($order->courier_id == $courier->id)>{{$courier->name}}</option>
                                        
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-3"></label>
                            <div class="col-md-9">
                                <button type="submit" class="btn btn-success">Update Order Info</button>
                                <a href="{{ route('admin.all.order') }}" class="btn btn-gray my-3">Cancel</a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
