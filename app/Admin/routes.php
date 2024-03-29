<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resource('article', ArticleController::class);
    $router->resource('categories', CategoryController::class);
    $router->resource('courses', CourseController::class);
    $router->resource('tags', TagController::class);
    $router->resource('experts', ExpertController::class);
    // $router->get('/article', 'ArticleController@index');
    // $router->resource('article'.'ArticleController');
});


