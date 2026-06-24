<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Session;

class CustomerMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  Closure(Request): (Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Session::get('customer_id')){
            return $next($request);
        }
        else{
            flash()->error('Please login to access this page');
            return redirect()->route('customer.login');
        }

        return $next($request);
    }
}
