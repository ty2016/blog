<?php

namespace App;

use App\Observer\CourseObserver;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{

    public $table="Course";
    public function setTagIdAttribute($value)
    {
        $this->attributes['tag_id'] = implode(',',$value);
    }
    protected static function boot()
    {
        parent::boot();
        Course::observe(CourseObserver::class);
//        static::addGlobalScope('tag_id', function(Builder $builder) {
//           dd($builder->value('tag_id'));
//        });
    }
    /**
     * 此模型的事件映射.
     *
     * @var array
     */
    protected $dispatchesEvents = [
        'saved' => CourseObserver::class,
        'updated' => CourseObserver::class
    ];

}
