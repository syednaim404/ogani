@extends('website.master')
@section('title')
    Blog Details
@endsection
@section('body')
    <!-- Blog Details Section Begin -->
    <section class="blog-details spad border">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar">
                        {{-- <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div> --}}
                        <div class="blog__sidebar__item">
                            <h4>Categories</h4>
                            <ul>
                                @foreach ($categories as $category)
                                    <li><a href="{{ route('product.category', $category->id) }}">{{$category->name}}</a></li>
                                @endforeach
                                
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Recent News</h4>
                            <div class="blog__sidebar__recent">
                                @foreach ($recent_news as $recentNews)
                                   <a href="{{ route('blog.details', $recentNews->id) }}" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="{{asset($recentNews->image)}}" alt="bloge image" height="50" width="70">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>{{$recentNews->name}}</h6>
                                        <span>{{$recentNews->updated_at->format('F j,Y')}}</span>
                                    </div>
                                </a> 
                                @endforeach
                                
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Search By</h4>
                            <div class="blog__sidebar__item__tags">
                                <a href="#">Apple</a>
                                <a href="#">Beauty</a>
                                <a href="#">Vegetables</a>
                                <a href="#">Fruit</a>
                                <a href="#">Healthy Food</a>
                                <a href="#">Lifestyle</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
                        <img src="{{asset($blog->image)}}" alt="">
                        <p>{!!$blog->long_description!!}</p>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        @if (isset(auth()->user()->profile_photo_path))
                                            <img src="{{ asset(Auth::user()->profile_photo_path) }}" alt="">
                                        @endif
                                        
                                    </div>
                                    <div class="blog__details__author__text">
                                        @if (isset(auth()->user()->name))
                                            <h6>{{ Auth::user()->name }}</h6>
                                            <span>Admin</span>
                                        @endif
                                        
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>Categories:</span> {{$blog->category->name}}</li>
                                        <li><span>Tags:</span> {{$blog->tages}}</li>
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="{{($blog->twitter)}}"><i class="fa fa-twitter"></i></a>
                                        <a href="{{($blog->facebook)}}"><i class="fa fa-facebook"></i></a>
                                        <a href="{{($blog->instagram)}}"><i class="fa fa-instagram"></i></a>
                                        <a href="{{($blog->pagelines)}}"><i class="fa fa-pinterest"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
    <section class="related-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related-blog-title">
                        <h2>Post You May Like</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($blogs as $blog)
                    <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="{{asset($blog->image)}}" alt="blog image">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> {{$blog->updated_at->format('F j,Y')}}</li>
                                <li><i class="fa fa-comment-o"></i> {{ rand(20, 80) }}</li>
                            </ul>
                            <h5><a href="{{ route('blog.details', $blog->id) }}">{{$blog->name}}</a></h5>
                            <p>{{$blog->description}} </p>
                        </div>
                    </div>
                </div>
                @endforeach
                
            </div>
        </div>
    </section>
    <!-- Related Blog Section End -->
@endsection
