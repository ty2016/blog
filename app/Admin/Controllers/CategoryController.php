<?php

namespace App\Admin\Controllers;

use App\Category;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Illuminate\Support\Facades\DB;

class CategoryController extends AdminController
{
    use ModelForm;
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '分类管理';
    protected $header = '分类管理';

    /**
     * Index interface.
     *
     * @param Content $content
     *
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->title(trans('上级分类'))
            ->description(trans('admin.list'))
            ->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());
                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $mcateModel = config('admin.database.cate_model');
                    $form->action(admin_base_path('/categories'));
                    $form->select('pid', trans('上级分类'))->options($mcateModel::selectOptions());
                    $form->text('name', trans('分类名称'))->rules('required');
                    $form->switch('is_menu', '是否菜单');
                    $form->switch('is_display', '是否显示');
                    $form->number('sort', '排序');
                    $form->hidden('_token')->default(csrf_token());
                    $column->append((new Box(trans('新建分类'), $form))->style('success'));
                });
            });
    }


    /**
     * @return \Encore\Admin\Tree
     */
    protected function treeView()
    {
        $cate_model = config('admin.database.cate_model');

        return $cate_model::tree(function (Tree $tree) {
            $tree->disableCreate();
            $tree->branch(function ($branch) {
                $payload = "&nbsp;<strong>{$branch['name']}</strong>";
                return $payload;
            });
        });
    }
    // /**
    //  * Edit interface.
    //  *
    //  * @param $id
    //  * @return Content
    //  */
    // public function edit($id)
    // {
    //     return Admin::content(function (Content $content) use ($id) {

    //         $content->header($this->header);
    //         $content->description('编辑类型');

    //         $content->body($this->form()->edit($id));
    //     });
    // }
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category);
        $grid->name('分类名称');
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
        $show = new Show(Category::findOrFail($id));
        return $show;
    }
  /**
     * Create interface.
     *
     * @return Content
     */
    // public function create()
    // {
    //     return Admin::content(function (Content $content) {

    //         $content->header($this->header);
    //         $content->description('添加类型');

    //         $content->body($this->form());
    //     });
    // }
    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Category);
        $mcateModel = config('admin.database.cate_model');
        $form->switch('is_menu', '是否菜单');
        $form->switch('is_display', '是否显示');
        $form->number('sort', '排序');
        $form->select('pid', trans('上级分类'))->options($mcateModel::selectOptions());
        $form->text('name','分类名称');
        $form->saving(function (Form $form) {
            dump($form);
        });
        return $form;
    }
    public function getCategoryOptions()
    {
        return DB::table('categories')->select('id','name as text')->get();
    }
}
