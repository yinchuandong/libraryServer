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
		
		
		vendor("Gw.Factory");
		$loanModel = new LoanModel();
		$className = $loanModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		
		$list = $library->getLoanList();
		
		$loanModel->addLoanList($studentNumber, $schoolId, $list);
		$returnList = $loanModel->
				field(array('schoolId','studentNumber','id','title','author','url','returnDate'))->
				where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->select();
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
	
		vendor("Gw.Factory");
		$historyModel = new HistoryModel();
		$className = $historyModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
	
		$list = $library->getHistoryList();
		
		
		$historyModel->addHistoryList($studentNumber, $schoolId, $list);
		$returnList = $historyModel->
				field(array('id','studentNumber', 'schoolId', 'title', 'author', 'url'))->
				where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->select();
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
		if(empty($studentNumber) || empty($password) || empty($schoolId) || empty($books)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		$bookArr = explode('|', $books);
		$bookquery = '';
		foreach ($bookArr as $id){
			$bookquery .= '&'.$id.'=Y';
		}
		
		vendor("Gw.Factory");
		$loanModel = new LoanModel();
		$className = $loanModel->getSchoolClassById($schoolId);
		$library = Factory::createClass($className);
		
		if(!$library->checkField($studentNumber, $password)){
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
		$info = $library->renew($books);
		$this->ajaxReturn("", $info, 1);
// 		$content = $library->getContent();
// 		var_dump($content);
		
	}
	
	
	
	public function test(){
		vendor("Gw.Factory");
		$model = Factory::createClass('LibGw');
		var_dump($model->checkField("20111003632", "yin543211"));
		
		var_dump($model->getLoanList());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}