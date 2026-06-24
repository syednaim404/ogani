@extends('website.master')
@section('title')
    Checkout
@endsection
@section('body')
    <!-- Breadcrumb Section Begin -->
    {{-- <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="index.html">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">

            <div class="checkout__form">
                <h4>Billing Details</h4>

                <form action="{{ route('checkout.new.order') }}" method="post">
                    <div class="row">
                        @csrf
                        <div class="col-lg-8 col-md-6">
                            @if (!Session::get('customer_id'))
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="checkout__input">
                                            <p>Full Name<span>*</span></p>
                                            <input type="text" name="name" placeholder="Enter Your Full Name" required>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Phone<span>*</span></p>
                                            <input type="number" name="mobile" placeholder="Enter Your Mobile Number" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Email<span>*</span></p>
                                            <input type="email" name="email" placeholder="Enter Your Email" required>
                                        </div>
                                    </div>
                                </div>
                            @endif
                            <div class="checkout__input">
                                    <p>Address<span>*</span></p>
                                    <input type="text" name="delivery_address" placeholder="Enter Delivery Address" required
                                        class="checkout__input__add">
                                </div>

                            <div class=" d-flex">
                                <p>Payment Method</p>
                                <label class="mx-4"><input type="radio" name="payment_method" value="cash" checked>
                                    Cash</label>
                                <label><input type="radio" name="payment_method" value="online"> Online</label>

                            </div>

                            <button type="submit" class="btn btn-success">Conform Order</button>
                        </div>


                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Your Order</h4>
                                <div class="checkout__order__products">Products <span>Total</span></div>
                                <ul>
                                    @php($sum = 0)
                                    @foreach (Cart::content() as $cartProduct)
                                        <li>{{ $cartProduct->name }} =({{ $cartProduct->price }} * {{ $cartProduct->qty }} )
                                            <span>{{ $cartProduct->price * $cartProduct->qty }}</span>
                                        </li>
                                        @php($sum = $sum + $cartProduct->price * $cartProduct->qty)
                                    @endforeach

                                </ul>
                                <div class="checkout__order__subtotal">Subtotal <span>{{ $sum }}</span></div>
                                <div class="checkout__order__subtotal">Tax <span>{{ $tax = round($sum * 0.15) }}</span>
                                </div>
                                <div class="checkout__order__subtotal">Shipping Cost <span>{{ $shipping = 100 }}</span>
                                </div>
                                <div class="checkout__order__total">Total <span>{{ $sum + $tax + $shipping }}</span></div>


                            </div>
                            <input type="hidden" name="order_total" value="{{ $sum }}">
                            <input type="hidden" name="tax_total" value="{{ $tax }}">
                            <input type="hidden" name="shipping_total" value="{{ $shipping }}">
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
