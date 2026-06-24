<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    private static $category, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/category-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$category = new Category();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$category->image;
        }

        self::saveData($request, self::$category, self::$imageUrl);
    }

    private static function saveData($request, $category, $imageUrl)
    {
        $category->name         = $request->name;
        $category->description  = $request->description;
        $category->image        = $imageUrl;
        $category->status       = $request->status;
        $category->save();
    }

    public static function updateData($request, $id)
    {
        self::$category = Category::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$category->image)) {
                unlink(self::$category->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$category->image;
        }
        self::saveData($request, self::$category, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$category = Category::find($id);
        if (file_exists(self::$category->image)) {
            unlink(self::$category->image);
        }
        self::$category->delete();
    }
}
