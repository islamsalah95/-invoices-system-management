<?php

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;
use Illuminate\Auth\Events\Registered;
use App\Providers\RouteServiceProvider;
use Laravel\Socialite\Facades\Socialite;
use App\Http\Controllers\ProfileController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/auth/redirect', function () {
    return Socialite::driver('google')->redirect();
})->name('auth.redirect');
Route::get('/auth/callback', function () {
    $user = Socialite::driver('google')->user();
    // dd($user->avatar);
     if($user){
        $userExist=User::where('email',$user->email)->first();

              if($userExist){
                $userExist->remember_token =$user->token;
                $userExist->save();
                Auth::login($userExist);
              }else{
                $collection = collect([1, 2, 3, 4, 5]);
                $userNew = User::create([
                    'name' => $user->name,
                    'email' =>$user->email,
                    'profile_photo_path' =>$user->avatar,
                    'password' => Hash::make($collection->random()),
                ]);
                $userNew->remember_token=$user->token;
                $userNew->save();
                event(new Registered($userNew));
                Auth::login($userNew);
              }

              return redirect(RouteServiceProvider::HOME);

     }else{
      return  abort(404,"wrong email");
     }
})->name('auth.callback');


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

// Route::get('/Home', function () {
//     return view('index');
// })->middleware(['auth', 'verified']);





Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

require __DIR__.'/website.php';
