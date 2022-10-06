<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Console\View\Components\Alert;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rules;

class UserController extends Controller
{
    public function config(){
        return view('user.config');
    }

    public function update(Request $request){
        $user = User::find(Auth::user()->id);
       
        $user->name = $request->input('name');
        $user->surname = $request->input('surname');
        $user->nick = $request->input('nick');
        $user->email = $request->input('email');

        //Actualizando base de datoss
        $user->save();

        return redirect()->route('config')->with('message','User updated successfully');

    }

}
