<?php

namespace App\Http\Controllers;

use App\Models\Courier;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use PDF;

class AdminOrderController extends Controller
{
    public function index()
    {
        return view('admin.order.index', ['orders' => Order::all()]);
    }

    public function detail($id)
    {
        return view('admin.order.detail', ['order' => Order::find($id)]);
    }

    public function edit($id)
    {
        return view('admin.order.edit', ['order' => Order::find($id), 'couriers' => Courier::all()]);
    }

    public function updateOrder(Request $request, $id)
    {
        $order = Order::find($id);

        if ($request->order_status == 'Pending') {

            $order->order_status    = $request->order_status;
            $order->delivery_status = $request->order_status;
            $order->payment_status  = $request->order_status;
        } else if ($request->order_status == 'Processing') {
            $order->order_status     = $request->order_status;
            $order->delivery_status  = $request->order_status;
            $order->payment_status   = $request->order_status;
            $order->delivery_address = $request->delivery_address;
            $order->courier_id       = $request->courier_id;
        } else if ($request->order_status == 'Complete') {
            $order->order_status        = $request->order_status;
            $order->delivery_status     = $request->order_status;
            $order->payment_status      = $request->order_status;
            $order->delivery_date       = date('Y-m-d');
            $order->delivery_timestamp  = strtotime($request->delivery_date);
            $order->payment_amount      = $order->order_total;
            $order->payment_date        = date('Y-m-d');
            $order->payment_timestamp   = strtotime(date('Y-m-d'));
        } else if ($request->order_status == 'Cancel') {
            $order->order_status     = $request->order_status;
            $order->delivery_status  = $request->order_status;
            $order->payment_status   = $request->order_status;
        }

        $order->save();

        flash()->success('Order Updated Successfully');
        return redirect()->route('admin.all.order');
    }

    public function invoice($id)
    {
        return view('admin.order.invoice', ['order' => Order::find($id)]);
    }

    public function downloadInvoice($id)
    {

        $pdf = PDF::loadView('admin.order.download-invoice', ['order' => Order::find($id)]);

        return $pdf->download($id . '-invoice.pdf');
    }

    public function deleteOrder($id)
    {
        Order::find($id)->delete();
        $orderDetails = OrderDetail::where('order_id', $id)->get();
        foreach ($orderDetails as $orderDetail) {
            $orderDetail->delete();
        }
        flash()->warning('Order Deleted Successfully');
        return back();
    }
}
