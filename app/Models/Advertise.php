<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Advertise extends Model
{
    private static $advertise, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/advertise-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$advertise = new Advertise();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$advertise->image;
        }

        self::saveData($request, self::$advertise, self::$imageUrl);
    }

    private static function saveData($request, $advertise, $imageUrl)
    {
        $advertise->image        = $imageUrl;
        $advertise->status       = $request->status;
        $advertise->save();
    }

    public static function updateData($request, $id)
    {
        self::$advertise = Advertise::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$advertise->image)) {
                unlink(self::$advertise->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$advertise->image;
        }
        self::saveData($request, self::$advertise, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$advertise = Advertise::find($id);
        if (file_exists(self::$advertise->image)) {
            unlink(self::$advertise->image);
        }
        self::$advertise->delete();
    }
}
