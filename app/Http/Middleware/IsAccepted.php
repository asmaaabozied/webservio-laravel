<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IsAccepted

{

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */

    public function handle(Request $request, Closure $next)
    {
        if (auth()->user()->hasRole('provider')) {
            if (!auth()->user()->accepted) {
                return response()->json('Your account is not accepted');
            }
        }
        return $next($request);

    }
}
