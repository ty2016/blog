<?php

namespace App\Providers;

use App\Course;
use App\CourseTag;
use App\Observer\CourseObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
//       Course::observe(CourseObserver::class);
       Course::saved(function (Course $course){

       });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

}
