<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    private static $banner, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/banner-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$banner = new Banner();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$banner->image;
        }

        self::saveData($request, self::$banner, self::$imageUrl);
    }

    private static function saveData($request, $banner, $imageUrl)
    {
        $banner->name         = $request->name;
        $banner->title        = $request->title;
        $banner->description  = $request->description;
        $banner->image        = $imageUrl;
        $banner->status       = $request->status;
        $banner->save();
    }

    public static function updateData($request, $id)
    {
        self::$banner = Banner::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$banner->image)) {
                unlink(self::$banner->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$banner->image;
        }
        self::saveData($request, self::$banner, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$banner = Banner::find($id);
        if (file_exists(self::$banner->image)) {
            unlink(self::$banner->image);
        }
        self::$banner->delete();
    }
}
