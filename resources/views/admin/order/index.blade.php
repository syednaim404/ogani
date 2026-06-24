@extends('admin.master')
@section('title')
    Manage Order
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
                <li class="breadcrumb-item active" aria-current="page">Manage Order</li>
            </ol>
        </div>
    </div>

    <!-- body -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Order Detail</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                            <thead>
                                <tr>
                                    <th class="wd-15p border-bottom-0">#</th>
                                    <th class="wd-15p border-bottom-0">Order Id</th>
                                    <th class="wd-15p border-bottom-0">Customer Info</th>
                                    <th class="wd-15p border-bottom-0">Order Date</th>
                                    <th class="wd-10p border-bottom-0">Order Total</th>
                                    <th class="wd-10p border-bottom-0">Order Status</th>
                                    <th class="wd-25p border-bottom-0">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orders as $order)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $order->id }}</td>
                                        <td>{{ $order->customer->name.'('.$order->customer->mobile.')' }}</td>
                                        <td>{{ $order->order_date }}</td>
                                        <td>{{ $order->order_total }}</td>
                                        <td>{{ $order->order_status }}</td>
                                        <td>

                                            <a href="{{route('admin.order.detail', $order->id)}}" class="btn btn-success" title="Detail">
                                                <i class="fa-solid fa-info-circle"></i>
                                            </a>

                                            <a href="{{route('admin.order.edit', $order->id)}}" class="btn btn-primary {{$order->order_status == 'Complete' ? 'disabled' : ''}}" title="Edit">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                            </a>

                                            <a href="{{route('admin.order.invoice', $order->id)}}" class="btn btn-gray" title="invoice">
                                                <i class="fa-solid fa-medkit"></i>
                                            </a>

                                            <a href="{{route('admin.order.download.invoice', $order->id)}}" class="btn btn-info" title="invoice downlode" target="_blank">
                                                <i class="fa-solid fa-download"></i>
                                            </a>


                                            <a href="{{route('admin.order.delete', $order->id)}}" class="btn btn-danger {{$order->order_status == 'Cancel' ? '' : 'disabled'}}"
                                                onclick="return confirm('Are You Sure? You Wont to Delete!')"  title="Delete">
                                                <i class="fa-solid fa-trash-can"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
