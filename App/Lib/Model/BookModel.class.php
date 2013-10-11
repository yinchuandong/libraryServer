<?php
class BookModel extends Model{
	public function getAllBooks(){
		$field = array("title", "id", "isbn", "callNumber");
		return $this->field($field)->select();
	}
}