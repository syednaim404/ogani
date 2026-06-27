@extends('website.master')
@section('title')
    Cart Product
@endsection
@section('body')
    <!-- Breadcrumb Section Begin -->
    {{-- <section class="breadcrumb-section set-bg" data-setbg="{{asset('/')}}website/assets/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Shopping Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="index.html">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Subtotal</th>
                                    <th>Delet</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($sum = 0)
                                @foreach ($cart_products as $cartProduct)
                                    <tr>
                                        <td class="shoping__cart__item">
                                            <img src="{{ asset($cartProduct->options->image) }}" alt="" width="100">
                                            <h5>{{ $cartProduct->name }}</h5>
                                        </td>
                                        <td class="shoping__cart__price">
                                            BET {{ $cartProduct->price }}
                                        </td>
                                        <form action="{{ route('cart.update', $cartProduct->rowId) }}" method="post">
                                            @csrf
                                            <td class="shoping__cart__quantity">
                                                <div class="quantity">
                                                    <div class="pro-qty">
                                                        <input type="number" name="qty" value="{{ $cartProduct->qty }}"
                                                            min="1" required>
                                                    </div>
                                                    <input type="submit" class="btn btn-success rounded-0" value="Update">
                                                </div>
                                            </td>
                                        </form>

                                        <td class="shoping__cart__total">
                                            {{ $cartProduct->qty * $cartProduct->price }}
                                        </td>
                                        <td class="shoping__cart__item__close">
                                            <a href="{{ route('cart.remove', $cartProduct->rowId) }}"><i
                                                    class="fa-solid fa-circle-xmark text-secondary"></i></a>

                                        </td>
                                    </tr>
                                    @php($sum = $sum + $cartProduct->qty * $cartProduct->price)
                                @endforeach


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <div class=" d-flex">
                                <h5>Discount Codes</h5>
                                <p class="ml-2">{{ session('message') }}</p>
                            </div>
                            <form action="{{route('apply.coupon') }}" method="post">
                                @csrf
                                <input type="text" name="code" placeholder="Enter your coupon code" required>
                                @error('code')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li>Subtotal <span>{{ $sum }}</span></li>
                            <li>Tax Amount <span>{{ $tax = round($sum * 0.15) }}</span></li>
                            <li>Shipping <span>{{ $shippingCost = $sum > 0 ? 100 : 0 }}</span></li>

                            <li>Total Pay <span>{{ $totalPay = $sum + $tax + $shippingCost }}</span></li>

                        </ul>

                        <a href="{{ route('checkout.index') }}" class="primary-btn">PROCEED TO CHECKOUT</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
@endsection
