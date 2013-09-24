<?php
class HistoryModel extends CommonModel{
	
	public function addHistoryList($studentNumber, $schoolId, $list){
// 		$this->where(array('studentNumber'=>$studentNumber, 'schoolId'=>$schoolId))->delete();
		
		$len = count($list['url']);
		for($i = 0; $i<$len; $i++){
			$url = $list['url'][$i];
			$author = $list['author'][$i];
			$title = $list['title'][$i];
			
			if ($this->isExsit($schoolId, $studentNumber, $title, $author)){
				continue;
			}
// 			$publishYear = $list['publishYear'][$i];
// 			$limitTime = $list['limitDate'][$i].' '.$list['limitTime'][$i];
// 			$returnTime = $list['returnDate'][$i].' '.$list['returnTime'][$i];
// 			$payment = $list['payment'][$i];
// 			$location = $list['location'][$i];
			$data = array(
					'studentNumber' => $studentNumber,
					'schoolId' => $schoolId,
					'author' => $author,
					'title' => $title,
					'url' => $url,
// 					'publishYear' => $publishYear,
// 					'limitTime' => $limitTime,
// 					'returnTime' => $returnTime,
// 					'payment' => trim($payment),
// 					'location' => $location
			);
			
			if(!$this->data($data)->add()){
				echo $this->getDbError();
			}
			
		}
	}
	
	/**
	 * 判断是否存在该书的历史记录
	 * @param int $schoolId
	 * @param String $studentNumber
	 * @param String $title
	 * @param String $author
	 * @return boolean
	 */
	public function isExsit($schoolId, $studentNumber, $title, $author){
		$where = array(
			'schoolId' => $schoolId,
			'studentNumber' => $studentNumber,
			'title' => $title,
			'author' => $author		
		);
		
		if ($this->where($where)->count()>=1){
			return true;
		}else{
			return false;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}