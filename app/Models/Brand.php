<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    private static $brand, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/brand-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$brand = new Brand();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$brand->image;
        }

        self::saveData($request, self::$brand, self::$imageUrl);
    }

    private static function saveData($request, $brand, $imageUrl)
    {
        $brand->name         = $request->name;
        $brand->description  = $request->description;
        $brand->image        = $imageUrl;
        $brand->status       = $request->status;
        $brand->save();
    }

    public static function updateData($request, $id)
    {
        self::$brand = Brand::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$brand->image)) {
                unlink(self::$brand->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$brand->image;
        }
        self::saveData($request, self::$brand, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$brand = Brand::find($id);
        if (file_exists(self::$brand->image)) {
            unlink(self::$brand->image);
        }
        self::$brand->delete();
    }
}
