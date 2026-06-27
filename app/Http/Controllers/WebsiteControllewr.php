<?php

namespace App\Http\Controllers;

use App\Models\Advertise;
use App\Models\Blog;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Contact;
use App\Models\Footer;
use App\Models\Product;
use Illuminate\Http\Request;

class WebsiteControllewr extends Controller
{
    public function index()
    {
        $latestProducts       = Product::where('status', 1)->latest()->get();
        $first_three          = $latestProducts->slice(0, 3);
        $next_three           = $latestProducts->slice(3, 3);

        $populerBrand         = Brand::where('status', 1)->latest()->get();
        $first_three_brand    = $populerBrand->slice(0, 3);
        $next_three_brand     = $populerBrand->slice(3, 3);

        $populerCategory      = Category::where('status', 1)->get();
        $first_three_category = $populerCategory->slice(0, 3);
        $next_three_category  = $populerCategory->slice(3, 3);

        return view('website.home.index', [

            'discount_products'     => Product::where('status', 1)->where('discount', '>', 0)->latest()->get(),
            'featured_product'      => Product::where('status', 1)->where('featured', 1)->latest()->take(12)->get(),
            'categories'            => Product::where('status', 1)->latest()->get(),
            'advertises'            => Advertise::where('status', 1)->latest()->take(2)->get(),
            'first_three'           => $first_three,
            'next_three'            => $next_three,
            'first_three_brands'    => $first_three_brand,
            'next_three_brands'     => $next_three_brand,
            'first_three_categorys' => $first_three_category,
            'next_three_categorys'  => $next_three_category,
            'blogs'                 => Blog::where('status', 1)->latest()->get(),

        ]);
    }

    public function category($id)
    {
        $latestProducts = Product::where('status', 1)->latest()->get();
        $first_three    = $latestProducts->slice(0, 3);
        $next_three     = $latestProducts->slice(3, 3);

        return view('website.category.index', [


            'discount_products' => Product::where('status', 1)->where('discount', '>', 0)->latest()->get(),
            'products'          => Product::where('category_id', $id)->where('status', 1)->latest()->get(),
            'categories'        => Category::where('status', 1)->get(),
            'first_three'       => $first_three,
            'next_three'        => $next_three,

        ]);
    }

    public function product($id)
    {
        return view('website.product.index', ['product' => Product::find($id), 'social_link' => Footer::where('status', 1)->first()]);
    }

    public function shop()
    {

        $latestProducts = Product::where('status', 1)->latest()->get();
        $first_three    = $latestProducts->slice(0, 3);
        $next_three     = $latestProducts->slice(3, 3);

        return view('website.shop.index', [

            'discount_products' => Product::where('status', 1)->where('discount', '>', 0)->latest()->get(),
            'shops'             => Product::where('status', 1)->latest()->get(),
            'first_three'       => $first_three,
            'next_three'        => $next_three,
            'categories'        => Category::where('status', 1)->get(),
        ]);
    }

    public function blog()
    {
        return view('website.blog.index', [
            'blogs'       => Blog::where('status', 1)->latest()->get(),
            'categories'  => Category::where('status', 1)->get(),
            'recent_news' => Blog::where('status', 1)->latest()->get(),
        ]);
    }

    public function blogDetails($id)
    {
        return view('website.blog.details', [

            'blog'        => Blog::find($id),
            'categories'  => Category::where('status', 1)->get(),
            'blogs'       => Blog::where('status', 1)->get(),
            'recent_news' => Blog::where('status', 1)->latest()->take(3)->get(),

        ]);
    }

    public function contact()
    {
        return view('website.contact.index', ['contact' => Contact::where('status', 1)->first()]);
    }

    public function about()
    {
        return view('website.about.index', ['categories'  => Category::where('status', 1)->get()]);
    }
}
