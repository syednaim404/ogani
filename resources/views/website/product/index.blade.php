@extends('website.master')
@section('title')
    Detail
@endsection
@section('body')
    <!-- Product Details Section Begin -->
    <section class="product-details spad  ">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6">

                    <div class="xzoom-container">
                        <img class="xzoom3" src="{{ asset($product->image) }}" xoriginal="{{ asset($product->image) }}" width="400"/>
                        <div class="xzoom-thumbs mt-3">

                            <a href="{{ asset($product->image) }}">
                                <img class="xzoom-gallery3" width="70" src="{{ asset($product->image) }}"
                                    xpreview="{{ asset($product->image) }}">
                            </a>
                            @foreach ($product->productThumbnails as $productThumbnail)
                                <a href="{{ asset($productThumbnail->image) }}">
                                    <img class="xzoom-gallery3" width="70" src="{{ asset($productThumbnail->image) }}">
                                </a>
                            @endforeach




                        </div>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>{{ $product->name }}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>({{ rand(10, 20) }} reviews)</span>
                        </div>
                        {{-- <div class=" d-flex pt-4">
                            <p class="text-danger fa-2x">BDT {{ $product->selling_price }}</p>

                            <del class=" text-secondary ml-2">
                                <h5 class=" text-secondary  ">BDT {{ $product->regular_price }}</h5>
                            </del>
                        </div> --}}
                        <div class="product__details__price">BDT {{ $product->selling_price }}
                            @if ($product->regular_price > $product->selling_price)
                                <span style="font-size: 20px; color:gray;"><del>BDT{{ $product->regular_price }}</del>
                                </span>
                            @endif

                        </div>
                        <p>{{ $product->description }}</p>

                        <form action="{{ route('cart.add', $product->id) }}" method="post">
                            @csrf
                            <div class="product__details__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="number" name="qty" value="1" min="1" required>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="primary-btn">ADD TO CARD</button>
                        </form>

                        <ul>
                            <li><b>Category</b> <span>{{ $product->category->name }}</span></li>
                            <li><b>Brand</b> <span>{{ $product->brand->name }}</span></li>
                            <li><b>Availability</b>
                                <span>{{ $product->stock >= 20 ? 'Available' : 'NOt Available' }}</span>
                            </li>
                            <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                            <li><b>Weight</b> <span>{{ $product->unit->name }}</span></li>
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="{{ optional($social_link)->facebook }}" target="_blank"><i
                                            class="fa fa-facebook"></i></a>
                                    <a href="{{ optional($social_link)->twitter }}" target="_blank"><i
                                            class="fa fa-twitter"></i></a>
                                    <a href="{{ optional($social_link)->instagram }}" target="_blank"><i
                                            class="fa fa-instagram"></i></a>
                                    <a href="{{ optional($social_link)->pinterest }}" target="_blank"><i
                                            class="fa fa-pinterest"></i></a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>{!! $product->long_description !!}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
@endsection
