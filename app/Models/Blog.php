<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    private static $blog, $image, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$image            = $request->file('image');
        self::$imageExtention   = self::$image->getClientOriginalExtension();
        self::$imageName        = time() . '.' . self::$imageExtention;
        self::$directory        = 'upload/blog-image/';
        self::$image->move(self::$directory, self::$imageName);
        self::$imageUrl         = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$blog = new Blog();

        if ($request->file('image')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$blog->image;
        }

        self::saveData($request, self::$blog, self::$imageUrl);
    }

    private static function saveData($request, $blog, $imageUrl)
    {
        $blog->category_id      = $request->category_id;
        $blog->name             = $request->name;
        $blog->image            = $imageUrl;
        $blog->description      = $request->description;
        $blog->long_description = $request->long_description;
        $blog->tages            = $request->tages;
        $blog->facebook         = $request->facebook;
        $blog->twitter          = $request->twitter;
        $blog->instagram        = $request->instagram;
        $blog->pinterest        = $request->pinterest;
        $blog->status           = $request->status ?? 1;
        $blog->save();
    }

    public static function updateData($request, $id)
    {
        self::$blog = Blog::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$blog->image)) {
                unlink(self::$blog->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$blog->image;
        }
        self::saveData($request, self::$blog, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$blog = Blog::find($id);
        if (file_exists(self::$blog->image)) {

            unlink(self::$blog->image);
        }
        self::$blog->delete();
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
