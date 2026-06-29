<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
    public function index()
    {

        return view('website.cart.index', ['cart_products' => Cart::content()]);
    }

    public function addToCart(Request $request, $id)
    {
        // return Cart::content();
        $product = Product::find($id);
        Cart::add([
            'id'      => $product->id,
            'name'    => $product->name,
            'qty'     => $request->qty,
            'price'   => $product->selling_price,
            'weight'  => 0,
            'options' => [

                'image'    => $product->image,
                'category' => $product->category->name,
                'brand'    => $product->brand->name,
                'unit'     => $product->unit->name,
            ]
        ]);
        return redirect()->route('cart.index');
    }

    public function updateCart(Request $request, $rowId)
    {
        Cart::update($rowId, $request->qty);
        flash()->success('Cart Updated Successfully');
        return redirect()->route('cart.index');
    }

    public function removeCart($rowId)
    {
        Cart::remove($rowId);
        flash()->warning('Cart Removed Successfully');
        return redirect()->route('cart.index');
    }




    public function applyCoupon(Request $request)
    {
      
        $coupon = Coupon::where('code', $request->code)->first();

        if (!$coupon) {
            return back()->with('message', 'Invalid coupon code.');
        }

        $expiryDate = Carbon::parse($coupon->expiry_date);
        $now = Carbon::now();

        if ($now->lessThanOrEqualTo($expiryDate)) {
            //store descount amount in sesion
            //update cupon table and use this coupon one time
            flash()->success('Discount applied succesfully!');
            return view('website.cart.index', compact('discount', 'cartTotal'));
        } else {
            return back()->with('message', 'Coupon has expired.');
        }
    }
}
