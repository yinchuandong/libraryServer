<?php 
class RecommendViewModel extends ViewModel{
	protected $viewFields = array(
			'Recommend'=>array('bookId'=>'id', 'schoolId', 'studentNumber', 'recommendTime'),
			'Book'=>array(
					'title', 'author', 'url', 'isbn', 'callNumber', 'cover', 'intro',
					'_on'=>'Recommend.bookId = Book.id'),
	);
}