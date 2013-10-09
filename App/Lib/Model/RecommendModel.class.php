<?php
class RecommendModel extends CommonModel{
	
	public function __construct(){
		parent::__construct();
	}
	
	public function existUser($studentNumber){
		$where = array('studentNumber' => $studentNumber);
		return $this->where($where)->find();
	}

	public function saveRecommend($studentNumber,$re,$schoolId=1){
		$where = array('studentNumber' => $studentNumber);
		$data['recommendisbn'] = implode(':', $re);
		$data['recommendTime']=time();
		$data['schoolId'] = $schoolId;
		$this->where($where)->data($data)->save();
	}
	

	public function addRecommend($studentNumber,$re,$schoolId=1){
		echo count($re);
		for ($i=count($re); $i < count($re); $i--) { 
			$data['recommendisbn'] = $re[$i];
			$data['studentNumber']=$studentNumber;
			$data['schoolId'] = $schoolId;
			$this->data($data)->add();
			echo $re[$i];
		}
		
		
	}
	
	
}