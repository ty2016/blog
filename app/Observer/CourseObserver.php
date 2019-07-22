<?php


namespace App\Observer;


use App\Course;
use App\CourseTag;

class CourseObserver
{
    /**
     * 监听创建用户事件.
     *
     */
    public function created(Course $course)
    {
        $tag_id=$course->tag_id;
        $tag=explode(',',$tag_id);
        if(CourseTag::where('course_id',$course->id)->count()>0){
            CourseTag::where('course_id',$course->id)->delete();
        }
        if(is_array($tag)){
            foreach ($tag as $k=>$v){
                $data[]=['tag_id'=>$v,'course_id'=>$course->id];
            }
            CourseTag::insert($data);
        }

    }
//laravel 模型事件 updated 触发条件
    public function updated(Course $course)
    {
        $tag_id=$course->tag_id;
        $tag=explode(',',$tag_id);
        if(CourseTag::where('course_id',$course->id)->count()>0){
            CourseTag::where('course_id',$course->id)->delete();
        }
        if(is_array($tag)){
            foreach ($tag as $k=>$v){
                $data[]=['tag_id'=>$v,'course_id'=>$course->id];
            }
            CourseTag::insert($data);
        }

    }

}