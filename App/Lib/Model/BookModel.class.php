<?php
class BookModel extends CommonModel{
	function __construct(){
		parent::__construct();
	}
	
	
	function addItems($hList){
		foreach ($hList as $item){
			if ($this->where(array('isbn' => $item['isbn']))->count() < 1){
				$data = array(
						'title' => $item['title'],
						'isbn' => $item['isbn'],
						'author' => $item['author'],
						'callNumber' => $item['callNumber']
				);
				$this->data($data)->add();
			}
		}
		
	}
	
}