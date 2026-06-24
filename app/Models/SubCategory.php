<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    private static $subCategory, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/sub-category-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$subCategory = new SubCategory();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$subCategory->image;
        }

        self::saveData($request, self::$subCategory, self::$imageUrl);
    }

    private static function saveData($request, $subCategory, $imageUrl)
    {
        $subCategory->category_id  = $request->category_id;
        $subCategory->name         = $request->name;
        $subCategory->description  = $request->description;
        $subCategory->image        = $imageUrl;
        $subCategory->status       = $request->status;
        $subCategory->save();
    }

    public static function updateData($request, $id)
    {
        self::$subCategory = SubCategory::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$subCategory->image)) {
                unlink(self::$subCategory->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$subCategory->image;
        }
        self::saveData($request, self::$subCategory, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$subCategory = SubCategory::find($id);
        if (file_exists(self::$subCategory->image)) {
            unlink(self::$subCategory->image);
        }
        self::$subCategory->delete();
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
