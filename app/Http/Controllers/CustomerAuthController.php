<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Session;

class CustomerAuthController extends Controller
{
    public function login()
    {
        return view('website.auth.login');
    }

    public function loginCheck(Request $request)
    {
        $customer = Customer::where('email', $request->email)->first();
        if ($customer) {
            if (password_verify($request->password, $customer->password)) {
                Session::put('customer_id', $customer->id);
                Session::put('customer_name', $customer->name);
                return redirect()->route('customer.dashboard');
            } else {
                flash()->error('Invalid password');
                return back();
            }
        } else {
            flash()->error('Invalid email');
            return back();
        }
    }

    public function register()
    {
        return view('website.auth.register');
    }

    // public function newCustomer(Request $request)
    // {
    //     $customer           = new Customer();
    //     $customer->name     = $request->name;
    //     $customer->email    = $request->email;
    //     $customer->mobile   = $request->mobile;
    //     $customer->password = bcrypt($request->password);
    //     $customer->save();

    //     Session::put('customer_id', $customer->id);
    //     Session::put('customer_name', $customer->name);
    //     return redirect()->route('customer.dashboard');
    // }
    public function newCustomer(Request $request)
    {

        // email check
        $existingEmailCustomer = Customer::where('email', $request->email)->first();
        if ($existingEmailCustomer) {
            return back()->with('message', 'This email already exists');
        }

        // mobile check
        $existingMobileCustomer = Customer::where('mobile', $request->mobile)->first();
        if ($existingMobileCustomer) {
            return back()->with('message', 'This mobile number already exists');
        }



        // new customer create
        $customer           = new Customer();
        $customer->name     = $request->name;
        $customer->email    = $request->email;
        $customer->mobile   = $request->mobile;
        $customer->password = bcrypt($request->password);
        $customer->save();

        Session::put('customer_id', $customer->id);
        Session::put('customer_name', $customer->name);
        return redirect()->route('customer.dashboard');
    }
}
