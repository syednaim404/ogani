<?php

use App\Http\Controllers\AdminOrderController;
use App\Http\Controllers\AdvertiseController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\CourierController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FooterController;
use App\Http\Controllers\HeaderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WebsiteControllewr;
use Illuminate\Support\Facades\Route;

Route::get('/', [WebsiteControllewr::class, 'index'])->name('home');
Route::get('/product/category/{id}', [WebsiteControllewr::class, 'category'])->name('product.category');
Route::get('/product/detail/{id}', [WebsiteControllewr::class, 'product'])->name('product.detail');
Route::get('/shop', [WebsiteControllewr::class, 'shop'])->name('shop');
Route::get('/all-blog', [WebsiteControllewr::class, 'blog'])->name('blog');
Route::get('/blog-details/{id}', [WebsiteControllewr::class, 'blogDetails'])->name('blog.details');
Route::get('/contact-us', [WebsiteControllewr::class, 'contact'])->name('contact');
Route::get('/about-us', [WebsiteControllewr::class, 'about'])->name('about');

Route::get('/card-product', [CartController::class, 'index'])->name('cart.index');
Route::post('/add-to-cart/{id}', [CartController::class, 'addToCart'])->name('cart.add');
Route::post('/update-to-cart/{rowId}', [CartController::class, 'updateCart'])->name('cart.update');
Route::get('/remove-to-cart/{rowId}', [CartController::class, 'removeCart'])->name('cart.remove');

Route::post('apply/coupon', [CouponController::class, 'applyCoupon'])->name('applyCoupon');

Route::get('/customer-login', [CustomerAuthController::class, 'login'])->name('customer.login');
Route::post('/customer-login-check', [CustomerAuthController::class, 'loginCheck'])->name('customer.login.check');
Route::get('/customer-register', [CustomerAuthController::class, 'register'])->name('customer.register');
Route::post('/customer/new-register', [CustomerAuthController::class, 'newCustomer'])->name('customer.new.register');

Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout.index');
Route::post('checkout/new-order', [CheckoutController::class, 'newOrder'])->name('checkout.new.order');
Route::get('checkout/complete-order', [CheckoutController::class, 'completeOrder'])->name('checkout.complete.order');


Route::middleware(['customer'])->group(function () {
    Route::get('/customer-dashboard', [CustomerDashboardController::class, 'index'])->name('customer.dashboard');
    Route::get('/customer-profile', [CustomerDashboardController::class, 'profile'])->name('customer.profile');
    Route::post('/customer-update-profile/{id}', [CustomerDashboardController::class, 'updateProfile'])->name('customer.update.profile');
    Route::get('/customer-orders', [CustomerDashboardController::class, 'orders'])->name('customer.orders');
    Route::get('/customer-change-password', [CustomerDashboardController::class, 'changePassword'])->name('customer.change.password');
    Route::post('/customer-update-password/{id}', [CustomerDashboardController::class, 'updatePassword'])->name('customer.update.password');
    Route::get('/customer-logout', [CustomerDashboardController::class, 'logout'])->name('customer.logout');
});


// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END


Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::resource('/category', CategoryController::class);
    Route::resource('/sub-category', SubCategoryController::class);
    Route::resource('/brand', BrandController::class);
    Route::resource('/unit', UnitController::class);
    Route::resource('/product', ProductController::class);
    Route::get('/get-sub-category',[ProductController::class, 'getSubCategory'])->name('get.sub.category');
    Route::resource('/banner', BannerController::class);
    Route::resource('/header', HeaderController::class);
    Route::resource('/user', UserController::class);
    Route::resource('/footer', FooterController::class);
    Route::resource('/advertise', AdvertiseController::class);

    Route::get('/all-order', [AdminOrderController::class, 'index'])->name('admin.all.order');
    Route::get('/order-detail/{id}', [AdminOrderController::class, 'detail'])->name('admin.order.detail');
    Route::get('/order-edit/{id}', [AdminOrderController::class, 'edit'])->name('admin.order.edit');
    Route::post('/order-update/{id}', [AdminOrderController::class, 'updateOrder'])->name('admin.order.update');
    Route::get('/order-invoice/{id}', [AdminOrderController::class, 'invoice'])->name('admin.order.invoice');
    Route::get('/order-download-invoice/{id}', [AdminOrderController::class, 'downloadInvoice'])->name('admin.order.download.invoice');
    Route::get('/order-delete/{id}', [AdminOrderController::class, 'deleteOrder'])->name('admin.order.delete');

    Route::resource('/courier', CourierController::class);
    Route::resource('/coupon', CouponController::class);
    Route::resource('/contact', ContactController::class);
    Route::resource('/blog', BlogController::class);
});
