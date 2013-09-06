<?php

class UserAction extends Action{
	public function __construct(){
		parent::__construct();
		
	}
	
	public function register(){
		echo 'register';
	}
	
	public function login(){
		vendor("Gw.Library");
		$User = new Library();
		$requestUrl = "http://lib.gdufs.edu.cn/uindex.php";
		
		$formUrl = 'http://lib.gdufs.edu.cn/bor.php';
		
		$field = array(
			'userid'=>'20111003632',
			'userpwd'=>'yin543211',
			'imageField.x'=>'18',
			'imageField.y'=>'4',
		);
		
		$User->checkField($field, $formUrl);
		$uriList = $User->getFinalUrl($requestUrl);
		var_dump($uriList);
	}
}

?>