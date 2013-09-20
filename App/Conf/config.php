<?php
return array(
	//'配置项'=>'配置值'	
	'APP_DEBUG'             => true,        // 开启调试模式
	'APP_STATUS'			=> 'debug',
	'DB_TYPE'               => 'mysql',     // 数据库类型
	'DB_HOST'               => '127.0.0.1', // 服务器地址
	'DB_NAME'               => 'gw_library',  //"daohang"        // 数据库名
	'DB_USER'               => 'root',      // 用户名
	'DB_PWD'                => '123',          // 密码
	'DB_PORT'               => '3306',        // 端口
	'DB_PREFIX'             => 'gw_',
	'SESSION_AUTO_START' =>true,
//     'APP_AUTOLOAD_PATH'=>'@.TagLib,@.ORG',
    'TOKEN_ON'  => false,
    'URL_ROUTER_ON' => true,
    'SHOW_PAGE_TRACE'=>true,
	
    'APP_GROUP_LIST'        => 'Api,Admin',      // 项目分组设定,多个组之间用逗号分隔,例如'Home,Admin'
	'DEFAULT_GROUP'         => 'Api',  // 默认分组
	
	/*缓存*/
    'TMPL_CACHE_ON'    => false,
    'HTML_CACHE_ON'   => false,
    'ACTION_CACHE_ON'  => false,
	'OUTPUT_ENCODE' => false,
    /*
     * 模板的输出格式
     */
    'TMPL_CONTENT_TYPE'     => 'text/html',
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
);
?>