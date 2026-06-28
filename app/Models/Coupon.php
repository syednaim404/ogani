<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{

    private static $coupon;

    public static function storeData($request)
    {
        self::$coupon = new Coupon();
        self::saveData($request, self::$coupon);
    }

    private static function saveData($request, $coupon)
    {
        $coupon->code                   = $request->code;
        $coupon->discount_type          = $request->discount_type;
        $coupon->discount_value         = $request->discount_value;
        $coupon->usage_limit            = $request->usage_limit;
        $coupon->used_count             = $request->used_count ?? 0;
        $coupon->expiry_date            = $request->expiry_date;
        $coupon->minimum_order_amount   = $request->minimum_order_amount;
        $coupon->status                 = $request->status ?? 1;
        $coupon->save();
    }

    public static function updateData($request, $id)
    {
        self::$coupon = Coupon::find($id);
        self::saveData($request, self::$coupon);
    }

    public static function deleteData($id)
    {
        self::$coupon = Coupon::find($id);
        self::$coupon->delete();
    }
}
