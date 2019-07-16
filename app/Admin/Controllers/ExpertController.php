<?php

namespace App\Admin\Controllers;

use App\Expert;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ExpertController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Expert';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Expert);

        $grid->column('id', __('编号'));
        $grid->column('realname', __('专家姓名'));
        $grid->column('introduction', __('专家介绍'));
        $grid->pic()->image();
        $grid->column('agency', __('所属机构'));
        $grid->column('qualification', __('专业资质'));
        $grid->column('certificate_number', __('证书编号'));
//        $grid->column('created_at', __('创建时间'));
//        $grid->column('updated_at', __('更新时间'));

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
        $show = new Show(Expert::findOrFail($id));

        $show->field('id', __('编号'));
        $show->field('realname', __('专家姓名'));
        $show->field('pic', __('Pic'));
        $show->field('agency', __('Agency'));
        $show->field('qualification', __('Qualification'));
        $show->field('certificate_number', __('Certificate number'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('introduction', __('专家介绍'));
        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Expert);

        $form->text('realname', __('专家姓名'));
        $form->cropper('pic', __('专家照片'));
        $form->text('agency', __('所属机构'));
        $form->text('qualification', __('专业资质'));
        $form->text('certificate_number', __('证书编号'));
        $form->textarea('introduction', __('专家介绍'));
        return $form;
    }
}
