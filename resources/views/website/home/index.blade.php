@extends('website.master')
@section('title')
    Home
@endsection

@section('body')
    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    @foreach ($discount_products as $discount_product)
                        <div class="col-lg-3">
                            <div class="product__discount__item">
                                <div class="product__discount__item__pic set-bg"
                                    data-setbg="{{ asset($discount_product->image) }}">
                                    <div class="product__discount__percent">
                                        -{{ $discount_product->discount }}%
                                    </div>
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__discount__item__text">
                                    <span>{{ $discount_product->brand->name }}</span>
                                    <h5><a
                                            href="{{ route('product.detail', $discount_product->id) }}">{{ $discount_product->name }}</a>
                                    </h5>
                                    <div class="product__item__price">
                                        {{ $discount_product->selling_price }}
                                        <span>{{ $discount_product->regular_price }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach


                </div>
            </div>
        </div>
    </section>


    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Featured Product</h2>
                    </div>
                    <div class="featured__controls">
                        <p>A featured product description is a concise, persuasive summary designed to highlight an item's
                            best features, benefits, and value</p>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                @foreach ($featured_product as $featuredProduct)
                    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="{{ asset($featuredProduct->image) }}">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li>
                                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a
                                        href="{{ route('product.detail', $featuredProduct->id) }}">{{ $featuredProduct->name }}</a>
                                </h6>
                                <h5>BDT {{ $featuredProduct->selling_price }}</h5>
                            </div>
                        </div>
                    </div>
                @endforeach


            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                @foreach ($advertises as $advertise)
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="banner__pic">
                            <img src="{{ $advertise->image }}" alt="advertise image">
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Popular Category</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                @foreach ($first_three_categorys as $first_three_category)
                                    <a href="{{route('product.category', $first_three_category->id)}}" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="{{ asset($first_three_category->image) }}" alt="{{ $first_three_category->name }}">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>{{ $first_three_category->name }}</h6>
                                        </div>
                                    </a>
                                @endforeach

                            </div>
                            <div class="latest-prdouct__slider__item">
                                @foreach ($next_three_categorys as $next_three_category)
                                    <a href="{{route('product.category', $next_three_category->id)}}" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="{{ asset($next_three_category->image) }}" alt="{{ $next_three_category->name }}">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>{{ $next_three_category->name }}</h6>
                                        </div>
                                    </a>
                                @endforeach



                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Latest Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                @foreach ($first_three as $first_three)
                                    <a href="{{ route('product.detail', $first_three->id) }}" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="{{ asset($first_three->image) }}" alt="{{ $first_three->name }}">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>{{ $first_three->name }}</h6>
                                            <span>BDT {{ $first_three->selling_price }}</span>
                                        </div>
                                    </a>
                                @endforeach

                            </div>
                            <div class="latest-prdouct__slider__item">
                                @foreach ($next_three as $next_three)
                                    <a href="{{ route('product.detail', $first_three->id) }}" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="{{ asset($next_three->image) }}" alt="{{ $next_three->name }}">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>{{ $next_three->name }}</h6>
                                            <span>BDT {{ $next_three->selling_price }}</span>
                                        </div>
                                    </a>
                                @endforeach



                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Populer Brand</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                @foreach ($first_three_brands as $first_three_brand)
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="{{ asset($first_three_brand->image) }}" alt="{{ $first_three_brand->name }}">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>{{ $first_three_brand->name }}</h6>
                                           
                                        </div>
                                    </a>
                                @endforeach

                            </div>
                            <div class="latest-prdouct__slider__item">
                                @foreach ($next_three_brands as $next_three_brand)
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="{{ asset($next_three_brand->image) }}" alt="{{ $next_three_brand->name }}">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>{{ $next_three_brand->name }}</h6>
                                          
                                        </div>
                                    </a>
                                @endforeach



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>From The Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($blogs as $blog)
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="{{ asset($blog->image) }}" alt="bloge image">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> {{ $blog->updated_at->format('F j,Y') }}</li>
                                    <li><i class="fa fa-comment-o"></i>{{ rand(20, 80) }}</li>
                                </ul>
                                <h5><a href="{{ route('blog.details', $blog->id) }}">{{ $blog->name }}</a></h5>
                                <p>{{ $blog->description }} </p>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>
    <!-- Blog Section End -->
@endsection
