<?php

class UserAction extends Action{
	public function __construct(){
		parent::__construct();
		
	}
	
	/**
	 * 注册的方法
	 */
	public function register(){
		$userModel = new UserModel();
		$studentNumber = $_GET['studentNumber'];
		$password = $_GET['password'];
		$schoolId = $_GET['school_id'];

		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		
		if ($userModel->isExsitUser($studentNumber, $schoolId)){
			$this->ajaxReturn('', '该用户已经存在', 1);
		}
		
		$field = array(
				'username' => $studentNumber,
				'password' => $password,
				'login-form-type'=> 'pwd'
		);
		vendor("Gw.Gwtxz");
		$user = new Gwtxz();
		$formUrl = 'http://xg.gdufs.edu.cn/pkmslogin.form';//学工管理的登陆框
		$requestUrl = $user->getRequestUrl($field['username'], 4);//Gwtxz类里内置的一些请求地址
		if($user->checkField($field , $formUrl)){
			$user->saveContent($requestUrl);
			$data = array(
					'studentNumber' => $studentNumber,
					'username' => $user->getName(2),
					'school_id' => $schoolId,
					'academy' => $user->getAcademy(2),
					'major' => $user->getMajor(2)
			);
			if($userModel->add($data)){
				$this->ajaxReturn('','注册成功',1);
			}else{
				$this->ajaxReturn('','注册失败',0);
			}
		}
		
	}
	
	/**
	 * 登陆
	 * @param studentNumber
	 * @param string password
	 * @param int school_id
	 * @return json{data:"", info:"", status: 1/0}
	 */
	public function login(){
		$studentNumber = $_GET['studentNumber'];
		$password = $_GET['password'];
		$schoolId = $_GET['school_id'];
		if(empty($studentNumber) || empty($password) || empty($schoolId)){
			$this->ajaxReturn('', '数据不合法', 0);
		}
		vendor("Gw.Library");
		$library = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
		$field = array(
			'userid' => $studentNumber,
			'userpwd' => $password,
		);
		
		if($library->checkField($field, $formUrl)){
			$this->ajaxReturn('', '', 1);
		}else{
			$this->ajaxReturn('', '用户名或密码错误', 0);
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

?>