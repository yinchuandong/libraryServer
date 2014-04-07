<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd"><html><head><title>超级图书馆</title><meta http-equiv="Content-Type" content="text/html" charset="utf-8"/><meta name="viewport"  content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1.0" /><link rel="stylesheet" href="__CSS__/main.css" /><script type="text/javascript">
window.onload = function(){
    remoteJsonp('http://218.244.136.178/superlibraryserver/index.php/Api/Apk/checkApk?callback=callback');
}

function remoteJsonp(url){
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = url;
    var head = document.getElementsByTagName('head')[0];
    head.appendChild(script);
    head.removeChild(script);
}

function callback(result){
    result = eval(result);
    var data = result.data;
    var apk = data.Apk;
    var url = apk.apkUrl;
    var versionName = apk.apkName;
    
    var downBtn = document.getElementById('download-btn');
    downBtn.href = url;
}
</script></head><body><div class="wrapper"><div class="header"><div class="headerContent"><div class="avatar"><img src="__IMG__/logo1.png" /></div><div id="name"><div id="chineseName"><p>超级图书馆</p></div></div></div></div><div class="container"><div class="panel" id="link" style="width:320px"><div class="content">
                        点击或扫描二维码下载
                        <a id="download-btn" href="#" class="bigBtn">
                        下载
                        </a><img src="__IMG__/download.png" alt="download" /><div class="detail"><span>软件说明</span><p>                            超级图书馆是一款具有续借图书、好书订阅、寻找书友的学习型社交软件。用户只需通过借书号和密码便可快速登录学校图书馆。目前这个软件完美支持广外、华工和暨南大学的用户使用。
                            <p></p></p></div><div class="title"><span>功能介绍</span></div><ul>　                    
                        　　<li><img src="__IMG__/presse.png" alt="" />无需注册，输入借书号安全访问</li><li><img src="__IMG__/presse.png" alt="" />提醒即将到期图书，自动续借</li><li><img src="__IMG__/presse.png" alt="" />查找图书馆书籍，收藏图书</li><li><img src="__IMG__/presse.png" alt="" />搜索、添加好友，私信交流</li><li><img src="__IMG__/presse.png" alt="" />好书智能推荐，新书不错过</li></ul><div class="title"><span>软件截图</span></div><img src="__IMG__/2.png" alt="" class="shot"/><img src="__IMG__/3.png" alt="" class="shot"/><img src="__IMG__/1.png" alt="" class="shot"/><img src="__IMG__/7.png" alt="" class="shot"/><img src="__IMG__/6.png" alt="" class="shot"/><img src="__IMG__/5.png" alt="" class="shot"/><img src="__IMG__/4.png" alt="" class="shot"/></div></div><div id="footer"><p>Copyright 超级图书馆</p></div></div></div></body></html>