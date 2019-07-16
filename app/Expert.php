<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Expert extends Model
{
    public static function getName()
    {
       $data=self::get();
        $categories=[];
        if($data){
            foreach ($data as $k=>$v){
                $categories[$v['id']]=$v['realname'];
            }
        }
        return $categories;
    }
}
