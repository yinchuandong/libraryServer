<?php 

class LoanAction extends Action{
	
	/**
	 * 获得借阅列表
	 */
	public function getLoanList(){
		vendor("Gw.Library");
		$library = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
		$studentNumber = $_GET['studentNumber'];
		$password = $_GET['password'];
		$schoolId = $_GET['school_id'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		$field = array(
			'userid'=>'20111003632',
			'userpwd'=>'yin543211',
		);
		
		if(!$library->checkField($field, $formUrl)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$uriList = $library->getFinalUrl($requestUrl);
		$url = $uriList['url'][0];
		$num = $uriList['num'][0];
		
		$list = $library->getLoanList($url);
		$loanModel = new LoanModel();
		$loanModel->addLoanList($studentNumber, $schoolId, $list);
		$returnData = array(
			'num' => $num,
			'list' => $list
		);
		$this->ajaxReturn($returnData , '请求成功', 1);
		
	}
	
	/**
	 * 获得历史记录
	 */
	public function getHistoryList(){
		vendor("Gw.Library");
		$library = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
		$studentNumber = $_GET['studentNumber'];
		$password = $_GET['password'];
		$schoolId = $_GET['school_id'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
	
		$field = array(
				'userid'=>'20111003632',
				'userpwd'=>'yin543211',
		);
	
		if(!$library->checkField($field, $formUrl)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$uriList = $library->getFinalUrl($requestUrl);
		$url = $uriList['url'][1];
		$num = $uriList['num'][1];
	
		$list = $library->getHistoryList($url);
		$historyModel = new HistoryModel();
		$historyModel->addHistoryList($studentNumber, $schoolId, $list);
		$returnData = array(
				'num' => $num,
				'list' => $list
		);
// 		$this->ajaxReturn($returnData , '请求成功', 1);
	}
	
	
	/**
	 * 续借
	 */
	public function doRenew(){
		
	}
	
	
	
	
	
}