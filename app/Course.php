<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    public $table="Course";
    public function setTagIdAttribute($value)
    {
        $this->attributes['tag_id'] = implode(',',$value);
    }
}
