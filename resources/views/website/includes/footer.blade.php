 <!-- Footer Section Begin -->
 <footer class="footer spad">
     <div class="container">
         <div class="row">
             <div class="col-lg-3 col-md-6 col-sm-6">
                 <div class="footer__about">
                     <div class="footer__about__logo">
                         @if ($footer)
                             <a href="{{ route('home') }}"><img src="{{ asset($footer->image) }}" alt="logo"></a>
                         @endif
                     </div>
                     <ul>
                         <li>Address: {{ optional($footer)->address }}</li>
                         <li>Phone: {{ optional($footer)->mobile }}</li>
                         <li>Email: {{ optional($footer)->email }}</li>
                         <li>Open time: {{ optional($footer)->open_time }}</li>
                     </ul>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                 <div class="footer__widget">
                     <h6>Useful Links</h6>
                     <ul>
                         <li><a href="{{route('about')}}">About Us</a></li>
                         <li><a href="#">About Our Shop</a></li>
                         <li><a href="#">Secure Shopping</a></li>
                         <li><a href="#">Delivery infomation</a></li>
                         <li><a href="#">Privacy Policy</a></li>
                         <li><a href="#">Our Sitemap</a></li>
                     </ul>
                     <ul>
                         <li><a href="#">Who We Are</a></li>
                         <li><a href="#">Our Services</a></li>
                         <li><a href="#">Projects</a></li>
                         <li><a href="#">Contact</a></li>
                         <li><a href="#">Innovation</a></li>
                         <li><a href="#">Testimonials</a></li>
                     </ul>
                 </div>
             </div>
             <div class="col-lg-4 col-md-12">
                 <div class="footer__widget">
                     <h6>Join Our Newsletter Now</h6>
                     <p>Get E-mail updates about our latest shop and special offers.</p>
                     <form action="#">
                         <input type="text" placeholder="Enter your mail">
                         <button type="submit" class="site-btn">Subscribe</button>
                     </form>
                     <div class="footer__widget__social">
                         <a href="{{ optional($footer)->facebook ?? '#' }}" target="_blank"><i
                                 class="fa fa-facebook"></i></a>
                         <a href="{{ optional($footer)->twitter ?? '#' }}" target="_blank"><i
                                 class="fa fa-twitter"></i></a>
                         <a href="{{ optional($footer)->instagram ?? '#' }}" target="_blank"><i
                                 class="fa fa-linkedin"></i></a>
                         <a href="{{ optional($footer)->pinterest ?? '#' }}" target="_blank"><i
                                 class="fa fa-pinterest-p"></i></a>
                     </div>
                 </div>
             </div>
         </div>
         <div class="row">
             <div class="col-lg-12">
                 <div class="footer__copyright">
                     <p class=" text-center">

                         &copy; All Rights Reserved by <a href="{{ route('home') }}" target="_blank">Ogani</a>
                     </p>
                 </div>
             </div>
         </div>
     </div>
 </footer>
 <!-- Footer Section End -->
