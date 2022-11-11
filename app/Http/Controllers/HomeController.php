<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;



class HomeController extends Controller
{
    public function redirect()
    { $userType =Auth::user()->user_type;
        if ($userType == 1)
        {
            return view('admin.home');
        }
        else{
            return view('front.index',[
                'products'=>Product::latest()->paginate(3)
            ]);
        }

    }
    public function index()
    {
        return view('front.index',[
            'products'=>Product::latest()->paginate(3)
        ]);
    }
    public function productDetails($id)
    {

        return view('front.product-detail',[
            'product'=>Product::find($id)
        ]);
    }
    public function addToCart(Request $request,$id)
    {
        if (Auth::check())
        {

            Cart::addCart($request,$id);
            return redirect()->back()->with('success','your product added to cart successfully');

        }
        else
        {
            return redirect('login');
        }

    }
    public function showCart()
    {
        if(Auth::id())
        {
            $id=Auth::user()->id;
            return view('front.show-cart',[
                'carts'=>Cart::where('user_id', $id)->get(),

            ]);
        }
        else{
            return redirect('login');
        }

    }

}
