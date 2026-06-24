<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
        private static $unit;

    public static function storeData($request)
    {
        self::$unit = new Unit();
        self::saveData($request, self::$unit);
    }

      private static function saveData($request, $unit)
    {
        $unit->name         = $request->name;
        $unit->code         = $request->code;
        $unit->description  = $request->description;
        $unit->status       = $request->status;
        $unit->save();
    }

    public static function updateData($request, $id)
    {
        self::$unit  = Unit::find($id);
        self::saveData($request, self::$unit);
    }

    public static function deleteData($id)
    {
        self::$unit = Unit::find($id);
        self::$unit->delete();
    }
}
