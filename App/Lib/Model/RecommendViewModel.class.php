<?php 
class RecommendViewModel extends ViewModel{
	protected $viewFields = array(
			'Recommend'=>array('bookId', 'schoolId', 'studentNumber', 'recommendTime'),
			'Book'=>array(
					'title', 'author', 'publisher', 'url', 'isbn', 'callNumber', 'cover',
					'_on'=>'Recommend.bookId = Book.id'),
	);
}