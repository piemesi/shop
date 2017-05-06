<?php
Artisan::call('view:clear');

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//Auth::logout();
Route::get('/', function () {
    return view('welcome');
})->name('home');


Route::get('/catalog', 'CatalogController@allCategories')->name('catalog');

Route::get('/catalog/{item}', 'CatalogController@showItems')->name('category');

Route::get('/catalog/{item}/{brand}', 'CatalogController@showBrandItems')->name('brand');

Route::get('/catalog/{item}/{brand}/{product}', 'ProductController@showProduct')->name('product');

Route::get('/info/{item}', 'InfoController@showItems')->name('info');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/add-to-cart/{id}/{pageItem}/{brand}', 'ProductController@addToCart')->name('addToCart');

Route::get('/reduce/{id}', 'ProductController@getReduceByOne')->name('reduceByOne');
Route::get('/remove/{id}', 'ProductController@getRemoveItem')->name('removeItem');


Route::get('/shopping-cart/', 'ProductController@getCart')->name('shoppingCart');


Route::get('/checkout', 'ProductController@getCheckout')->name('checkout')->middleware('auth');

Route::post('/checkout', 'ProductController@postCheckout')->name('checkout')->middleware('auth');

Auth::routes(); // ???

Route::get('/home', 'HomeController@index');

Route::get('/logout', 'Auth\LoginController@logout')->name('logout');

Route::get('/user/profile', 'UserController@getProfile')->name('profile')->middleware('auth');


Route::post('/sendmail', function (\Illuminate\Http\Request $request,
                                   \Illuminate\Mail\Mailer $mailer) {
    $mailer
        ->to($request->input('mail'))
        ->send(new \App\Mail\MyMail($request->input('data')));
    return redirect()->back();
})->name('sendmail');



