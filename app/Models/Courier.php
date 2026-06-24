<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Courier extends Model
{

    private static $courier, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/courier-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$courier = new Courier();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$courier->image;
        }

        self::saveData($request, self::$courier, self::$imageUrl);
    }

    private static function saveData($request, $courier, $imageUrl)
    {
        $courier->name    = $request->name;
        $courier->email   = $request->email;
        $courier->mobile  = $request->mobile;
        $courier->address = $request->address;
        $courier->image   = $imageUrl;
        $courier->status  = $request->status;
        $courier->save();
    }

    public static function updateData($request, $id)
    {
        self::$courier = Courier::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$courier->image)) {
                unlink(self::$courier->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$courier->image;
        }
        self::saveData($request, self::$courier, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$courier = Courier::find($id);
        if (file_exists(self::$courier->image)) {
            unlink(self::$courier->image);
        }
        self::$courier->delete();
    }
}
