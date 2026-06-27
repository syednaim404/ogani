@extends('website.master')
@section('title')
    Blog
@endsection

@section('body')
    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                       
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
                <div class="col-lg-8 col-md-7">
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
                                        <h5><a href="{{ route('blog.details', $blog->id) }}">{{$blog->name}}</a>
                                        </h5>
                                        <p>{{$blog->description}}</p>
                                        <a href="{{ route('blog.details', $blog->id) }}" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                        @endforeach


                        <div class="col-lg-12">
                            <div class="product__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
@endsection
