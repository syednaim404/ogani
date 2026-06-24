<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductThumbnail extends Model
{
    private static $productThumbnail, $productThumbnails, $imageExtension, $imageName, $directory, $imageUrl;

    public static function storeThumbnail($images, $productId)
    {
        foreach ($images as $image) {
            self::$imageExtension               = $image->getClientOriginalExtension();
            self::$imageName                    = rand(10000, 50000) . '.' . self::$imageExtension;
            self::$directory                    = 'upload/product-thumbnail-image/';
            $image->move(self::$directory, self::$imageName);
            self::$imageUrl                     = self::$directory . self::$imageName;

            self::$productThumbnail             = new ProductThumbnail();
            self::$productThumbnail->product_id = $productId;
            self::$productThumbnail->image      = self::$imageUrl;
            self::$productThumbnail->save();
        }
    }

    public static function updatedThumbnail($images, $productId)
    {
        self::deleteThumbnail($productId);
        self::storeThumbnail($images, $productId);
    }

    public static function deleteThumbnail($productId)
    {
        self::$productThumbnails = ProductThumbnail::where('product_id', $productId)->get();

        foreach (self::$productThumbnails as $productThumbnail) {
            if (file_exists($productThumbnail->image)) {
                unlink($productThumbnail->image);
            }
            $productThumbnail->delete();
        }
    }
}
