<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    // Show Login Form
    public function showLoginForm()
    {
        return view('auth.login');
    }

    // Handle Login Request
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return redirect()->route('contacts.index')->with('success', 'Login successful!');
        }

        return back()->withErrors(['email' => 'Invalid credentials'])->withInput();
    }

    // Logout Function
    public function logout()
    {
        Auth::logout();
        return redirect()->route(route: 'user.login')->with('success', 'You have been logged out.');
    }
}
