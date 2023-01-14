<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    //Show Register/Create Form
    public function create(){
        return view('users.register');
    }

    public function store(Request $request){
        /**
         * In confirming that the password and the password confirmation fields match, make the name of the password field "password" and
         * then the confirmation field "password_confirm".  This naming
         * convention will allow you to utilize the confirming logic
         * passed into the validate array below
         */

        // $formFields = $request->validate([
        //     'name'      =>  ['required', 'min:3'],
        //     //'email'     =>  ['required', 'email', Rule::unique('users', 'email')],
        //     'email'      => 'required|unique:users, email',
        //     'password'  =>  ['required', 'confirmed', 'min:6'],
        //     'confirm'
        // ]);

        $formFields = $request->validate([
            'name' => ['required', 'min:3'],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => 'required|confirmed|min:6'
        ]);

        //Hash Password
        $formFields['password'] = bcrypt($formFields['password']);

        //Creates User
        $user = User::create($formFields);

        //User::create($formFields);

        //Login
        auth()->login($user);

        return redirect('/')->with('message', 'User created and logged in');

    }

    //Log User Out
    public function logout(Request $request){
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message', 'User logged out');
    }
}
