<?php 
class LoanModel extends CommonModel{
	
	public function __construct(){
		parent::__construct();
	}
	
	public function addLoanList($studentNumber, $schoolId, $list){
	
		$len = count($list['id']);
		for($i = 0; $i<$len; $i++){
			$id = $list['id'][$i];
			$url = $list['url'][$i];
			$author = $list['author'][$i];
			$title = $list['title'][$i];
			$publishYear = $list['publishYear'][$i];
			$returnTime = $list['returnDate'][$i];
			$callNumber = $list['callNumber'][$i];
			$payment = $list['payment'][$i];
			$location = $list['location'][$i];
			$data = array(
					'id' => $id,
					'studentNumber' => $studentNumber,
					'school_id' => $schoolId,
					'author' => $author,
					'title' => $title,
					'url' => $url,
					'publishYear' => $publishYear,
					'callNumber' => $callNumber,
					'returnTime' => $returnTime,
					'payment' => trim($payment),
					'location' => $location
			);
			
// 			var_dump($data);
			if(!$this->data($data)->add()){
				echo $this->getDbError();
			}
		}
	
	}
	
}