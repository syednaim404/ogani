<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use Illuminate\Http\Request;
use Session;

class CustomerDashboardController extends Controller
{
    public function index()
    {

        return view('customer.dashboard.index');
    }

    public function profile()
    {
        return view('customer.dashboard.profile', ['customer' => Customer::find(Session::get('customer_id'))]);
    }

    public function updateProfile(Request $request, $id)
    {
        Customer::updateProfileData($request, $id);
        flash()->success('Profile Updated Successfully');
        return back();
    }

    public function orders()
    {
        return view('customer.dashboard.orders', ['orders' => Order::where('customer_id', Session::get('customer_id'))->latest()->get()]);
    }

    public function changePassword()
    {
        return view('customer.dashboard.change-password', ['customer' => Customer::find(Session::get('customer_id'))]);
    }

    public function updatePassword(Request $request, $id)
    {
        $customer = Customer::find($id);

        if (password_verify($request->current_password, $customer->password)) {

            if ($request->new_password == $request->confirm_password) {
                $customer->password    = bcrypt($request->new_password);
                $customer->save();
                flash()->success('Password Updated Successfully');
                return redirect()->route('customer.dashboard');
            } else {
                flash()->error('New password and confirm password do not match');
                return back();
            }
        } else {
            flash()->error('Current password is incorrect');
            return back();
        }
    }


    public function logout()
    {
        Session::forget('customer_id');
        Session::forget('customer_name');
        return redirect()->route('home');
    }
}
