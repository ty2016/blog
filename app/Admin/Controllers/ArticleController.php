<?php

namespace App\Admin\Controllers;

use App\Article;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ArticleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '文章';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article);
        $grid->column('id','编号');
        $grid->column('name','标题');
        $grid->column('sort','排序');
        // $grid->pic('封面');
        $grid->pic()->image();
        // $grid->pic()->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('source','来源');
        $grid->column('date','时间');
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
        $show = new Show(Article::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Article);
        $directors = [
            1 => 'John',
            2 => 'Smith',
            3 => 'Kate' ,
        ];
        
        $form->select('cate_id', '分类')->options($directors);
        $form->text('name', '标题');
        // $form->image('pic','封面图');
        $form->cropper('pic','封面图');
        $form->text('sort', '排序');
        $form->text('source', '来源');
        // $form->text('source', '内容');
        $form->ueditor('content','内容');
        $form->datetime('date', '发布时间');
    
        return $form;
    }
}
