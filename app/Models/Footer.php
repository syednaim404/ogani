<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Footer extends Model
{
    private static $footer, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/footer-logo/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$footer = new Footer();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$footer->image;
        }

        self::saveData($request, self::$footer, self::$imageUrl);
    }

    private static function saveData($request, $footer, $imageUrl)
    {

        $footer->image      = $imageUrl;
        $footer->address    = $request->address;
        $footer->mobile     = $request->mobile;
        $footer->email      = $request->email;
        $footer->open_time  = $request->open_time;
        $footer->map_link   = $request->map_link;
        $footer->facebook   = $request->facebook;
        $footer->twitter    = $request->twitter;
        $footer->instagram  = $request->instagram;
        $footer->pinterest  = $request->pinterest;
        $footer->status     = $request->status;
        $footer->save();
    }

    public static function updateData($request, $id)
    {
        self::$footer = Footer::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$footer->image)) {
                unlink(self::$footer->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$footer->image;
        }
        self::saveData($request, self::$footer, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$footer = Footer::find($id);
        if (file_exists(self::$footer->image)) {

            unlink(self::$footer->image);
        }
        self::$footer->delete();
    }
}
