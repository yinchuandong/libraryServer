<?php
class SchoolAction extends CommonAction{
	
	public function __construct(){
		parent::__construct();
	}
	
	public function index(){
		echo 'school';
	}
	
	
	/**
	 * 得到学校名称的列表
	 */
	function getSchoolList(){
		$model = D('School');
		if (($data = $model->field("schoolName")->select())!=false){
			$this->ajaxReturn($data,'',1);
		}else{
			$this->ajaxReturn('', '服务器数据错误' ,0);
		}
	}
}