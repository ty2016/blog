<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
class Category extends Model
{
   public $table="category";
   public $timestamps = false;
   use ModelTree, AdminBuilder; 
   protected $fillable = ['name','sort','pid'];
   public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        $this->setParentColumn('pid');
        $this->setOrderColumn('sort');
        $this->setTitleColumn('name');
    }
}
