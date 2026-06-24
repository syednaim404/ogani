<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.coupon.index', ['coupons' => Coupon::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.coupon.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([

            'code'            => 'required',
            'discount_amount' => 'required',
            'start_date'      => 'required',
            'end_date'        => 'required',
        ]);

        Coupon::storeData($request);
        flash()->success('Coupon Create Succesfully!');
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Coupon $coupon)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Coupon $coupon)
    {
        return view('admin.coupon.edit', ['coupon' => $coupon]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Coupon $coupon)
    {
        $request->validate([

            'code'            => 'required',
            'discount_amount' => 'required',
            'start_date'      => 'required',
            'end_date'        => 'required',
        ]);
        Coupon::updateData($request, $coupon->id);
        flash()->success('Coupon Update Succesfully!');
        return redirect()->route('coupon.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Coupon $coupon)
    {
        Coupon::deleteData($coupon->id);
        flash()->warning('Coupon Delete Succesfully!');
        return back();
    }
}
