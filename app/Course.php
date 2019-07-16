<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    public $table="Course";
    public function coursetag()
    {
        return $this->hasMany(CourseTag::class);
    }
}
