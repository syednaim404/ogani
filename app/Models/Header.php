<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Header extends Model
{
    private static $header, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/header-logo/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$header = new Header();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$header->image;
        }

        self::saveData($request, self::$header, self::$imageUrl);
    }

    private static function saveData($request, $header, $imageUrl)
    {
       
        $header->image         = $imageUrl;
        $header->mobile        = $request->mobile;
        $header->description   = $request->description;
        $header->status        = $request->status;
        $header->save();
    }

    public static function updateData($request, $id)
    {
        self::$header = Header::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$header->image)) {
                unlink(self::$header->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$header->image;
        }
        self::saveData($request, self::$header, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$header = Header::find($id);
        if (file_exists(self::$header->image)) {
            unlink(self::$header->image);
        }
        self::$header->delete();
    }
}
