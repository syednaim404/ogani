<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    private static $customer;

    public static function updateProfileData($request, $id)
    {
       self:: $customer                = Customer::find($id);
       self:: $customer->name          = $request->name;
       self:: $customer->email         = $request->email;
       self:: $customer->mobile        = $request->mobile;
       self:: $customer->address       = $request->address;
       self:: $customer->date_of_birth = $request->date_of_birth;
       self:: $customer->save();
    }
    
}
