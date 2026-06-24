 <!-- Page Preloder -->
 <div id="preloder">
     <div class="loader"></div>
 </div>

 <!-- Humberger Begin -->
 <div class="humberger__menu__overlay"></div>
 <div class="humberger__menu__wrapper">
     <div class="humberger__menu__logo">
         @if ($header)
             <a href="{{ route('home') }}">
                 <img src="{{ $header->image }}" alt="logo">
             </a>
         @endif
     </div>
     <div class="humberger__menu__cart">
         <ul>
             <li><a href="#"><i class="fa fa-heart"></i> <span>0</span></a></li>
             <li><a href="{{ route('cart.index') }}"><i class="fa fa-shopping-bag"></i>
                     <span>{{ count(Cart::content()) }}</span></a></li>
         </ul>
         @php($sum = 0)
         @foreach (Cart::content() as $item)
             @php($sum = $sum + $item->price * $item->qty)
         @endforeach

         @php($shiping = $sum > 0 ? 100 : 0)
         @php($total = $sum + $shiping + round($sum * 0.15))
         <div class="header__cart__price">Item: <span>{{$total }}</span></div>
     </div>
     <div class="humberger__menu__widget">
         <div class="header__top__right__language">
             <img src="img/language.png" alt="">
             <div>English</div>
             <span class="arrow_carrot-down"></span>
             <ul>
                 <li><a href="#">Spanis</a></li>
                 <li><a href="#">English</a></li>
             </ul>
         </div>
         <div class="header__top__right__auth">
             <div class="d-flex">
                 @if (Session::get('customer_id'))
                     <a href="{{ route('customer.logout') }}"><i class="fa fa-user"></i> Logout</a>
                     <a href="" class="mx-1">|</a>
                     <a href="{{ route('customer.dashboard') }}">Dashboard</a>
                 @else
                     <a href="{{ route('customer.login') }}"><i class="fa fa-user"></i> Login</a>
                     <a href="" class="mx-1">|</a>
                     <a href="{{ route('customer.register') }}">Register</a>
                 @endif
             </div>
         </div>
     </div>
     <nav class="humberger__menu__nav mobile-menu">
         <ul>
             <li class="{{ Request::route()->getName() == 'home' ? 'active' : '' }}"><a
                     href="{{ route('home') }}">Home</a></li>
             <li class=" {{ Request::route()->getName() == 'shop' ? 'active' : '' }}"><a
                     href="{{ route('shop') }}">Shop</a></li>
             <li><a href="#">Pages</a>
                 <ul class="header__menu__dropdown">
                     <li><a href="{{ route('about') }}">About</a></li>
                 </ul>
             </li>
             <li class=" {{ Request::route()->getName() == 'blog' ? 'active' : '' }}"><a
                     href="{{ route('blog') }}">Blog</a></li>
             <li class=" {{ Request::route()->getName() == 'contact' ? 'active' : '' }}"><a
                     href="{{ route('contact') }}">Contact</a></li>
         </ul>
     </nav>
     <div id="mobile-menu-wrap"></div>
     <div class="header__top__right__social">
         <a href="{{ optional($sosal_links)->facebook ?? '#' }}" target="_blank"><i class="fa fa-facebook"></i></a>
         <a href="{{ optional($sosal_links)->twitter ?? '#' }}" target="_blank"><i class="fa fa-twitter"></i></a>
         <a href="{{ optional($sosal_links)->instagram ?? '#' }}" target="_blank"><i class="fa fa-linkedin"></i></a>
         <a href="{{ optional($sosal_links)->pinterest ?? '#' }}" target="_blank"><i class="fa fa-pinterest-p"></i></a>
     </div>
     <div class="humberger__menu__contact">
         <ul>
             <li><i class="fa fa-envelope"></i> {{ optional($email)->email }}</li>
             <li>Free Shipping for all Order of $99</li>
         </ul>
     </div>
 </div>
 <!-- Humberger End -->


 <!-- Header Section Begin -->
 <header class="header">
     <div class="header__top">
         <div class="container">
             <div class="row">
                 <div class="col-lg-6 col-md-6">
                     <div class="header__top__left">
                         <ul>
                             <li><i class="fa fa-envelope"></i> {{ optional($email)->email }}</li>
                             <li>Free Shipping for all Order of $99</li>
                         </ul>
                     </div>
                 </div>
                 <div class="col-lg-6 col-md-6">
                     <div class="header__top__right">
                         <div class="header__top__right__social">
                             <a href="{{ optional($sosal_links)->facebook ?? '#' }}" target="_blank"><i
                                     class="fa fa-facebook"></i></a>
                             <a href="{{ optional($sosal_links)->twitter ?? '#' }}" target="_blank"><i
                                     class="fa fa-twitter"></i></a>
                             <a href="{{ optional($sosal_links)->instagram ?? '#' }}" target="_blank"><i
                                     class="fa fa-linkedin"></i></a>
                             <a href="{{ optional($sosal_links)->pinterest ?? '#' }}" target="_blank"><i
                                     class="fa fa-pinterest-p"></i></a>
                         </div>
                         <div class="header__top__right__language">
                             <img src="img/language.png" alt="">
                             <div>English</div>
                             <span class="arrow_carrot-down"></span>
                             <ul>
                                 <li><a href="#">Spanis</a></li>
                                 <li><a href="#">English</a></li>
                             </ul>
                         </div>
                         <div class="header__top__right__auth">

                             <div class="d-flex">
                                 @if (Session::get('customer_id'))
                                     <a href="{{ route('customer.logout') }}"><i class="fa fa-user"></i> Logout</a>
                                     <a href="" class="mx-1">|</a>
                                     <a href="{{ route('customer.dashboard') }}">Dashboard</a>
                                 @else
                                     <a href="{{ route('customer.login') }}"><i class="fa fa-user"></i> Login</a>
                                     <a href="" class="mx-1">|</a>
                                     <a href="{{ route('customer.register') }}">Register</a>
                                 @endif
                             </div>

                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="container">
         <div class="row">
             <div class="col-lg-3">
                 <div class="header__logo">
                     @if ($header)
                         <a href="{{ route('home') }}"><img src="{{ asset($header->image) }}" alt=""></a>
                     @endif

                 </div>
             </div>
             <div class="col-lg-6">
                 <nav class="header__menu">
                     <ul>
                         <li class="{{ Request::route()->getName() == 'home' ? 'active' : '' }}"><a
                                 href="{{ route('home') }}">Home</a></li>
                         <li class=" {{ Request::route()->getName() == 'shop' ? 'active' : '' }}"><a
                                 href="{{ route('shop') }}">Shop</a></li>
                         <li><a href="#">Pages</a>
                             <ul class="header__menu__dropdown">
                                 <li><a href="{{ route('about') }}">About</a></li>
                             </ul>
                         </li>
                         <li class=" {{ Request::route()->getName() == 'blog' ? 'active' : '' }}"><a
                                 href="{{ route('blog') }}">Blog</a></li>
                         <li class=" {{ Request::route()->getName() == 'contact' ? 'active' : '' }}"><a
                                 href="{{ route('contact') }}">Contact</a></li>
                     </ul>
                 </nav>
             </div>
             <div class="col-lg-3">
                 <div class="header__cart">
                     <ul>
                         <li><a href="#"><i class="fa fa-heart"></i> <span>0</span></a></li>
                         <li><a href="{{ route('cart.index') }}"><i class="fa fa-shopping-bag"></i>
                                 <span>{{ count(Cart::content()) }}</span></a></li>
                     </ul>




                     @php($sum = 0)
                     @foreach (Cart::content() as $item)
                         @php($sum = $sum + $item->price * $item->qty)
                     @endforeach

                     @php($shiping = $sum > 0 ? 100 : 0)
                     @php($total = $sum + $shiping + round($sum * 0.15))
                     <div class="header__cart__price">Item: <span>{{ $total}}</span></div>
                 </div>
             </div>
         </div>
         <div class="humberger__open">
             <i class="fa fa-bars"></i>
         </div>
     </div>
 </header>
 <!-- Header Section End -->

 <!-- Hero Section Begin -->
 <section class="hero {{ Request::route()->getName() == 'home' ? '' : 'hero-normal' }}">
     <div class="container">
         <div class="row">
             <div class="col-lg-3">
                 <div class="hero__categories">
                     <div class="hero__categories__all">
                         <i class="fa fa-bars"></i>
                         <span>All departments</span>
                     </div>
                     <ul>
                         @foreach ($categories as $category)
                             <li><a href="{{ route('product.category', $category->id) }}">{{ $category->name }}</a>
                             </li>
                         @endforeach
                     </ul>
                 </div>
             </div>
             <div class="col-lg-9">
                 <div class="hero__search">
                     <div class="hero__search__form">
                         <form action="#">
                             <div class="hero__search__categories">
                                 All Categories
                                 <span class="arrow_carrot-down"></span>
                             </div>
                             <input type="text" placeholder="What do yo u need?">
                             <button type="submit" class="site-btn">SEARCH</button>
                         </form>
                     </div>
                     <div class="hero__search__phone">
                         <div class="hero__search__phone__icon">
                             <i class="fa fa-phone"></i>
                         </div>
                         <div class="hero__search__phone__text">
                             <h5>{{ optional($header)->mobile }}</h5>
                             <span>{{ optional($header)->description }}</span>
                         </div>
                     </div>
                 </div>
                 @if (Request::route()->getName() == 'home')
                     <div class="hero__item set-bg"
                         data-setbg="{{ asset('/') }}website/assets/img/hero/banner.jpg">
                         <div class="hero__text">
                             <span>{{ optional($banner)->title }}</span>
                             <h2>{{ optional($banner)->name }}<br>
                                 100% Organic</h2>
                             <p>{{ optional($banner)->description }}</p>
                             <a href="{{ route('shop') }}" class="primary-btn">SHOP NOW</a>
                         </div>
                     </div>
                 @endif
             </div>
         </div>
     </div>
 </section>
 <!-- Hero Section End -->
