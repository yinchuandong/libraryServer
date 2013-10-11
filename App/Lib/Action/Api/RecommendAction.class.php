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
		
		if (empty($_REQUEST['p'])){
			//计算推荐的书
			$this->calculateRecommend();
		}
		
		//数据分页
		import("ORG.Util.Page");
		$model = new RecommendViewModel();
		$where = array(
				'schoolId' => $schoolId,
				'studentNumber' => 	$studentNumber
		);
		$totalNums = $model->where($where)->count();
		
		$listRows = empty($_REQUEST['listRows']) ? 10 : $_REQUEST['listRows'];
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

	public function getUserHistory($studentNumber){
		$model = D('History');
		$result = $model->getUserHistory($studentNumber);
		return $result;
	}

	public function getAllHistory(){
		$model = new HistoryModel();
		$result = $model->getAllHistory();
		return $result;
	}

	
	function calculateRecommend(){
		import('@.ORG.library');
		if($_REQUEST){
			$studentNumber = $this->_request("studentNumber");
			$schoolId = $this->_request("schoolId");
			$histories = $this->getAllHistory();
			$re = new Recommendate();
			$result = $this->getUserHistory($studentNumber);
			$re->setPreference($result);
			$re->setBooks($histories);
			$result = $re->recommendateBook();
			$this->updateRecommend($studentNumber,$result,$schoolId);
		}
		
		
	}

	function updateRecommend($studentNumber,$recommend,$schoolId){
		$model = D('Recommend');
		$model->addRecommend($studentNumber,$recommend,$schoolId);
	}
	
	/**
	 * 更新书库的封面和url等信息
	 */
	public function getCover(){
		$model = D('Book');
		vendor('IsbnHelper.CoverHelper');
		$helper = new CoverHelper();
		$list = $model->field(array('isbn','title'))->where('cover is null')->select();
		foreach ($list as $row){
			
			$isbn = str_replace("-", "", $row['isbn']);
			$info = $helper->getBookByIsbn($isbn);
			if ($info == null){
				$info = $helper->getBookByTitle($row['title']);
			}
			$where = array(
					'isbn'=>$row['isbn']		
			);
			$data = array(
					'cover'=>$info['cover'],
					'url'=>$info['url'],
					'publisher'=>$info['publisher']
			);
			$model->where($where)->data($data)->save();
		}
	}
	
	
	function mergeHisotryToBook(){
		$model = new BookModel();
		$mergeData = $model->query("select distinct(isbn),title,author,callNumber from gw_history as h where h.isbn not in (select b.isbn from gw_book as b where isbn is not null and callNumber is not null)");
		foreach ($mergeData as $row){
			$model->data($row)->add();
		}
		var_dump($mergeData);
	}
	
	
	
	
	
	
	
	
}