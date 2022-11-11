<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Cart extends Model
{
    use HasFactory;
    private static $cart;

    public static function addCart($request,$id)
    {
        self::$cart =new Cart();
       $user=Auth::user();
       $product=Product::find($id);
        self::$cart->name =$user->name;
        self::$cart->email =$user->email;
        self::$cart->phone =$user->Phone;
        self::$cart->address =$user->address;
        self::$cart->product_title =$product->title;
        if ($product->discount_price!=null)
        {
            self::$cart->price =$product->discount_price * $request->quantity;
        }
        else{
            self::$cart->price =$product->price * $request->quantity;

        }

        self::$cart->image =$product->image;
        self::$cart->product_id =$product->id;
        self::$cart->user_id =$user->id;
        self::$cart->quantity =$request->quantity;
        self::$cart->save();
    }
}
