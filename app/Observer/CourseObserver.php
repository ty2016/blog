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
       $data[]=['tag_id'=>$course->tag_id,'course_id'=>$course->id];
       CourseTag::create($data);
    }

}