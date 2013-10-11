<?php 
class RecommendViewModel extends ViewModel{
	protected $viewFields = array(
			'Recommend'=>array('bookId'=>'id', 'schoolId','recommendisbn', 'studentNumber', 'recommendTime'),
			'Book'=>array(
					'title', 'author', 'url', 'isbn', 'callNumber', 'cover', 
					'_on'=>'Recommend.recommendisbn = Book.isbn'),
	);
}