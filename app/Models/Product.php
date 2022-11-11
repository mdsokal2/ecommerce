<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    private static $product;
    public static $image,$imageName,$imageUrl,$imageDirectory;
    public static function saveImage($request,$existImage=null)
    {
        self::$image = $request->file('image');
        if (self::$image)
        {
            if (file_exists($existImage))
            {
                unlink($existImage);
            }
            self::$imageName=rand().time().'.'.self::$image->getClientOriginalExtension();
            self::$imageDirectory='admin/assets/images/products/';
            self::$image->move(self::$imageDirectory,self::$imageName);
            self::$imageUrl=self::$imageDirectory.self::$imageName;
        }
        else{
            self::$imageUrl=$existImage;
        }
       return self::$imageUrl;
    }
    public static function createProduct($request)
    {
        self::$product = new Product();
        self::$product->title =$request->title;
        self::$product->description =$request->description;
        self::$product->price =$request->price;
        self::$product->quantity =$request->quantity;
        self::$product->discount_price =$request->discount_price;
        self::$product->category =$request->category;
        self::$product->image =self::saveImage($request);
        self::$product->save();
    }
    public static function updateProduct($request,$id)
    {
        self::$product = Product::find($id);
        self::$product->title =$request->title;
        self::$product->description =$request->description;
        self::$product->price =$request->price;
        self::$product->quantity =$request->quantity;
        self::$product->discount_price =$request->discount_price;
        self::$product->category =$request->category;
        self::$product->image =self::saveImage($request,self::$product->image);
        self::$product->save();
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
