<?php

namespace App\Admin\Controllers;

use App\Course;
use App\CourseTag;
use App\Expert;
use App\Tag;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CourseController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '课程列表';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Course);
        $grid->column('id', __('编号'));


        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Course::findOrFail($id));


        return $show;
    }

//    public function store()
//    {
//        $data = $_POST;
//        unset($data['tag_id']);
//        unset($data['_token']);
//        unset($data['_previous_']);

//        $id=Course::insertGetId($data);
//        if ($id) {
//            $data = [];
//            if ($_POST['tag_id']) {
//                foreach ($_POST['tag_id'] as $k => $v) {
//                    $data[] = ['tag_id' => $v, 'course_id' => $id];
//                }
//                CourseTag::create($data);
//            }
//        }
//    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Course);
        $form->text('title', __('视频标题'))->required();
        $mcateModel = config('admin.database.cate_model');
        $form->select('category_id', trans('视频分类'))->options($mcateModel::selectOptions())->required();
        $form->select('experts_id', trans('老师'))->options(Expert::getName())->required();
        $form->cropper('pic', '视频封面图');
        $form->switch('is_push', '是否推荐');
        $form->url('video', '视频地址');
        $form->textarea('summary', '视频简介');
        $tag = Tag::all();
        $tags = [];
        if ($tag) {
            foreach ($tag as $k => $v) {
                $tags[$v['id']] = $v['title'];
            }
        }
        $form->listbox('tag_id', '标签')->options($tags);
        // 在表单提交前调用
        $form->saving(function (Form $form) {
            $_POST['tag_id']=implode(',',$_POST['tag_id']);
        });
       $form->saved(function (Form $forms) {
           $id=$forms->model()->id;
            if ($id) {
            $data = [];
            if ($_POST['tag_id']) {
                foreach ($_POST['tag_id'] as $k => $v) {
                    $data[] = ['tag_id' => $v, 'course_id' => $id];
                }
                CourseTag::create($data);
            }
        }
       });
        return $form;
    }
}
