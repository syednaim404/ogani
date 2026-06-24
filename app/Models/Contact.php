<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    private static $contact;

    public static function storeData($request)
    {
        self::$contact = new Contact();
        self::saveData($request, self::$contact);
    }

    private static function saveData($request, $contact)
    {
        $contact->address    = $request->address;
        $contact->mobile     = $request->mobile;
        $contact->email      = $request->email;
        $contact->open_time  = $request->open_time;
        $contact->map_link   = $request->map_link;
        $contact->status     = $request->status ?? 1;
        $contact->save();
    }

    public static function updateData($request, $id)
    {
        self::$contact = Contact::find($id);
        self::saveData($request, self::$contact);
    }

    public static function deleteData($id)
    {
        self::$contact = Contact::find($id);
        self::$contact->delete();
    }
}
