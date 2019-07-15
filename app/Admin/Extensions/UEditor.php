<?php
 namespace App\Admin\Extensions;
 use Encore\Admin\Form\Field;

class UEditor extends Field
{
protected $view = 'admin.u-editor';
protected static $css = [];
protected static $js = [
    'ueditor/ueditor.config.js',
    'ueditor/ueditor.all.js'
];

public function render()
{
    $name = $this->formatName($this->column);

    $this->script = <<<EOT
    //解决第二次进入加载不出来的问题
    UE.delEditor("container");
    var ue = UE.getEditor('container',{
    elementPathEnabled: false,
    enableContextMenu: false,
    autoClearEmptyNode: true,
    wordCount: false,
    imagePopup: false,
     autotypeset: {indent: true, imageBlockLine: 'center'}
    });
    ue.ready(function() {
      ue.execCommand('serverparam', '_token', '{{ csrf_token() }}');

    });

EOT;
      return parent::render();
  }
}