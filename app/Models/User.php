<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Database\Factories\UserFactory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens;

    /** @use HasFactory<UserFactory> */
    use HasFactory;

    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array<int, string>
     */
    protected $appends = [
        'profile_photo_url',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }


    private static $user, $profile_photo_path, $imageExtention, $imageName, $directory, $imageUrl;

    private static function getImageUrl($request)
    {
        self::$profile_photo_path  = $request->file('profile_photo_path');
        self::$imageExtention      = self::$profile_photo_path->getClientOriginalExtension();
        self::$imageName           = time() . '.' . self::$imageExtention;
        self::$directory           = 'upload/user-image/';
        self::$profile_photo_path->move(self::$directory, self::$imageName);
        self::$imageUrl            = self::$directory . self::$imageName;
        return self::$imageUrl;
    }

    public static function storeData($request)
    {
        self::$user = new User();

        if ($request->file('profile_photo_path')) {
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$user->profile_photo_path;
        }

        self::saveData($request, self::$user, self::$imageUrl);
    }

    private static function saveData($request, $user, $imageUrl)
    {
        $user->name                = $request->name;
        $user->email               = $request->email;
        if(isset($request->password)){
            $user->password        = bcrypt($request->password);
        } 
        
        else {
            $user->password        = $user->password;
        }
        $user->profile_photo_path  = $imageUrl;
        $user->save();
    }

    public static function updateData($request, $id)
    {
        self::$user = User::find($id);
        if ($request->file('profile_photo_path')) {

            if (file_exists(self::$user->profile_photo_path)) {
                unlink(self::$user->profile_photo_path);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$user->profile_photo_path;
        }
        self::saveData($request, self::$user, self::$imageUrl);
    }

    public static function deleteData($id)
    {
        self::$user = User::find($id);
        if (file_exists(self::$user->profile_photo_path)) {
            unlink(self::$user->profile_photo_path);
        }
        self::$user->delete();
    }
}










    
   


