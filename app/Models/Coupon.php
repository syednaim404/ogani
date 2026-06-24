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
        $coupon->code            = $request->code;
        $coupon->discount_amount = $request->discount_amount;
        $coupon->start_date      = $request->start_date;
        $coupon->end_date        = $request->end_date;
        $coupon->usage_limit     = $request->usage_limit;
        $coupon->used_count      = $request->used_count;
        $coupon->status          = $request->status ?? 1;
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
