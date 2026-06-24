<?php

namespace App\Providers;

use App\Models\Banner;
use App\Models\Category;
use App\Models\Contact;
use App\Models\Footer;
use App\Models\Header;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

        //this line use'website.includes.header' if mister page include header   
        View::composer('website.includes.header', function ($view) {
            $categories = Category::where('status', 1)->get();
            $view->with('categories', $categories);
            $sosal_links = Footer::where('status', 1)->latest()->first();
            $view->with('sosal_links', $sosal_links);
            $email = Contact::where('status', 1)->latest()->first();
            $view->with('email', $email);

            $banner = Banner::where('status', 1)->latest()->first();
            $view->with('banner', $banner);

            $header = Header::where('status', 1)->latest()->first();
            $view->with('header', $header);

            $footer = Footer::where('status', 1)->latest()->first();
            $view->with('footer', $footer);
        });

        View::composer('website.includes.footer', function ($view) {
            $footer = Footer::where('status', 1)->latest()->first();
            $view->with('footer', $footer);
        });
    }
}
