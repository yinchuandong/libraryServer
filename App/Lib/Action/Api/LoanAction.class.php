<?php 

class LoanAction extends Action{
	
	/**
	 * 获得借阅列表
	 * @param studentNumber
	 * @param string password
	 * @param int schoolId
	 */
	public function getLoanList(){
		
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		$field = array(
			'userid' => $studentNumber,
			'userpwd' => $password,
		);
		
		vendor("Gw.Library");
		$library = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
		if(!$library->checkField($field, $formUrl)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$uriList = $library->getFinalUrl($requestUrl);
		$url = $uriList['url'][0];
		$num = $uriList['num'][0];
		
		$list = $library->getLoanList($url);
		$loanModel = new LoanModel();
		$loanModel->addLoanList($studentNumber, $schoolId, $list);
		$returnList = $loanModel->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->select();
		$returnData = array(
// 				'num' => $num,
				'Loan' => $returnList
		);
		$this->ajaxReturn($returnData , '请求成功', 1);
		
	}
	
	/**
	 * 获得历史记录
	 * @param studentNumber
	 * @param string password
	 * @param int schoolId
	 */
	public function getHistoryList(){
		
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
	
		$field = array(
			'userid' => $studentNumber,
			'userpwd' => $password,
		);
		
		vendor("Gw.Library");
		$library = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
	
		if(!$library->checkField($field, $formUrl)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$uriList = $library->getFinalUrl($requestUrl);
		$url = $uriList['url'][1];
		$num = $uriList['num'][1];
	
		$list = $library->getHistoryList($url);
		
		$historyModel = new HistoryModel();
		$historyModel->addHistoryList($studentNumber, $schoolId, $list);
		$returnList = $historyModel->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->select();
		$returnData = array(
// 				'num' => $num,
				'History' => $returnList //这里的键名是客户端的Model
		);
		$this->ajaxReturn($returnData , '请求成功', 1);
	}
	
	//==============================================
	/**
	 * notice: 此方法目前返回的还没做好
	 * 续借，通过get方法传入
	 * @param studentNumber
	 * @param string password
	 * @param int schoolId
	 * @param string books 要续借的书的id，如果有多本书，用|分开
	 * 
	 */
	public function renew(){
		$studentNumber = $_REQUEST['studentNumber'];
		$password = $_REQUEST['password'];
		$schoolId = $_REQUEST['schoolId'];
		$books = $_REQUEST['books'];
// 		if(empty($studentNumber) || empty($password) || empty($schoolId) || empty($books)){
// 			$this->ajaxReturn('', '数据不合法', 0);
// 		}
		
		$bookArr = explode('|', $books);
		$bookquery = '';
		foreach ($bookArr as $id){
			$bookquery .= '&'.$id.'=Y';
		}
		
		vendor("Gw.Library");
		$library = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
		
		$field = array(
				'userid'=>'20111003632',
				'userpwd'=>'yin543211',
		);
		
		if(!$library->checkField($field, $formUrl)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$uriList = $library->getFinalUrl($requestUrl);
		$renewUrl = $library->getRenewUrl($uriList['url'][0]);
		
		$renewApartUrl = $renewUrl['renewApart'].$bookquery;
		$library->saveContent($renewApartUrl);
// 		$content = $library->getContent();
// 		var_dump($content);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}