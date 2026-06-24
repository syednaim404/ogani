<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    private static $product, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/product-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$product = new Product();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$product->image;
        }

        $productId = self::saveData($request, self::$product, self::$imageUrl);
        return $productId;
    }

    private static function saveData($request, $product, $imageUrl)
    {
        $product->category_id      = $request->category_id;
        $product->sub_category_id  = $request->sub_category_id;
        $product->brand_id         = $request->brand_id;
        $product->unit_id          = $request->unit_id;
        $product->name             = $request->name;
        $product->regular_price    = $request->regular_price;
        $product->selling_price = $request->selling_price;
        
        if ($request->has('discount') && $request->discount > 0 && $request->discount <= 100) {
            $product->selling_price = round($product->selling_price - ($product->selling_price * $request->discount / 100));
        }
        $product->discount         = $request->discount ?? 0;
        $product->stock            = $request->stock;
        $product->description      = $request->description;
        $product->long_description = $request->long_description;
        $product->image            = $imageUrl;
        $product->featured         = $request->featured;
        $product->status           = $request->status;
        $product->save();
        return $product->id;
    }

    public static function updateData($request, $id)
    {
        self::$product = Product::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$product->image)) {
                unlink(self::$product->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$product->image;
        }
        self::saveData($request, self::$product, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$product = Product::find($id);

        if (file_exists(self::$product->image)) {
            unlink(self::$product->image);
        }
        self::$product->delete();
    }


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function productThumbnails()
    {
        return $this->hasMany(ProductThumbnail::class);
    }
}
