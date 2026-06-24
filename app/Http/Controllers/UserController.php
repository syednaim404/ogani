<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return view('admin.user.index', ['users' => User::all()]);
    }
    
    public function create()
    {
        return view('admin.user.create');
    }

    public function store(Request $request)
    {
        $request->validate([ 

            'email' => 'required',
            'password' => 'required',
        ]);
        User::storeData($request);
        flash()->success('User Created Successfully!');
        return redirect()->route('user.create');
    }

    public function show(User $user)
    {
        //
    }

    public function edit(User $user)
    {
        return view('admin.user.edit', ['user' => $user]);
    }

    public function update(Request $request, User $user)
    {
        $request->validate([ 
            'email' => 'required',
        ]);
        User::updateData($request, $user->id);
        flash()->success('User Update Successfully!');
        return redirect()->route('user.index');
    }

    public function destroy(User $user)
    {
        if($user->id == 5){
            flash()->error('You can not delete this user!');
            return redirect()->route('user.index');
        }
        User::deleteData($user->id);
        flash()->warning('User Delete Successfully!');
        return redirect()->route('user.index');
    }
}

