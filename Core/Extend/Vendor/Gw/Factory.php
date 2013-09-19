<?php
class Factory{
	
	/**
	 * 抽象工厂模式，根据传入的字符串实例化一个类
	 * @param String $className
	 * @return Libbase
	 */
	public static function createClass($className){
		$dir = dirname(__FILE__);
		include $dir.'/LibBase.php';
		include $dir.'/LibGw.php';
		include $dir.'/LibHg.php';
		try {
			$reflect = new ReflectionClass($className);
			$gw = $reflect->newInstance();
		} catch (Exception $e) {
			$gw = null;
		}
		return $gw;
	}
	
}