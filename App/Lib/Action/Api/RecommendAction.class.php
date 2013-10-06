<?php
class RecommendAction extends CommonAction{
	
	public function __construct(){
		
	}
	
	public function index(){
		echo 'recommend-->index';
	}
	
	function getRecommendList(){
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		
		vendor("Gw.Factory");
		$className = D('Recommend')->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		
		//数据分页
		import("ORG.Util.Page");
		$model = new RecommendViewModel();
		$where = array(
				'schoolId' => $schoolId,
				'studentNumber' => 	$studentNumber
		);
		$totalNums = $model->where($where)->count();
		
		$listRows = empty($_REQUEST['listRows']) ? 4 : $_REQUEST['listRows'];
		$page = new Page($totalNums, $listRows);
		$data = $model->where($where)->order('recommendTime desc')->
					limit($page->firstRow.','.$page->listRows)->select();
		
		if ($data != false){
			$returnData = array('Recommend'=>$data);
			$this->ajaxReturn($returnData, '请求成功', 1);
		}else{
			$this->ajaxReturn('', '服务器无响应', 0);
		}
		
	} 

	public function getUsers(){
		$model = D('User');
		$result = $model->getUsers();
		return $result;
	}

	public function getUserHistory($studentNumber){
		$model = D('History');
		$result = $model->getUserHistory($studentNumber);
		return $result;
	}

	public function getAllHistory(){
		$model = D('History');
		$result = $model->getAllHistory();
		return $result;
	}

	
	function getRecommendation(){
		import('@.ORG.library');
		$users = $this->getUsers();
		$histories = $this->getAllHistory();
		for ($i=0; $i < count($users); $i++) {
			$re = new Recommendate();
			echo '<br>'.$i.' :'.$users[$i]['studentNumber'].'<br>';
			$result = $this->getUserHistory($users[$i]['studentNumber']);
			$re->setPreference($result);
			$re->setBooks($histories);
			$result = $re->recommendateBook();
			$this->updateRecommend($users[$i]['studentNumber'],$result);
		}
	}

	function updateRecommend($studentNumber,$recommend){
		$model = D('Recommend');
		$result = $model->existUser($studentNumber);
		if($result){
			$model->saveRecommend($studentNumber,$recommend);
		}else{
			$model->addRecommend($studentNumber,$recommend);
		}
	}
	
	public function getCover(){
		$model = D('Book');
		vendor('IsbnHelper.CoverHelper');
		$helper = new CoverHelper();
		$list = $model->field(array('isbn'))->where('cover is null')->select();
		foreach ($list as $row){
			
			$isbn = str_replace("-", "", $row['isbn']);
			$info = $helper->getBookByIsbn($isbn);
			$where = array(
					'isbn'=>$row['isbn']		
			);
			$data = array(
					'cover'=>$info['cover'],
					'url'=>$info['url']	
			);
// 			var_dump($data);
			$model->where($where)->data($data)->save();
		}
// 		var_dump($list);
	}
	
	
	
	
	
	
	
	
	
	
	
}