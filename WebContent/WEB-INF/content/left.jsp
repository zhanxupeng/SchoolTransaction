<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>校易网商品分类</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<link href="css/css.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
		<script language="javascript" type="text/javascript"> 
			$(function(){
				/** 给左侧功能菜单绑定点击事件  */
				$("td[id^='navbg']").click(function(){
				   	 /** 获取一级菜单的id */
				   	 var navbgId = this.id;
				   	 /** 获取对应的二级菜单id */
				   	 var submenuId = navbgId.replace('navbg','submenu');
				   	 /** 控制二级菜单显示或隐藏  */
				   	 $("#"+submenuId).toggle();
				   	 /** 控制关闭或者开启的图标*/
				   	 $("#"+navbgId).toggleClass("left_nav_expand");
				   	 
				   	 /** 控制其他的一级菜单的二级菜单隐藏按钮都关闭  */
				   	 $("tr[id^='submenu']").not("#"+submenuId).hide();
				   	 /** 控制其他一级菜单的图片显示关闭  */
				   	 $("td[id^='navbg']").not(this).removeClass().addClass("left_nav_closed");
				   	 
				   	 
				})
			})
		</script>
	</head>
<body>
	<div style="margin:10px;text-align:left;">
		<table width="200" height="100%" border="0" cellpadding="0" cellspacing="0" class="left_nav_bg">
		  <tr><td class="left_nav_top"><div class="font1">闪讯</div></td></tr>
		  <tr valign="top">
		    <td class="left_nav_bgshw" height="100">
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=10M" target="rightFrame">10M</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=20M" target="rightFrame">20M</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=50M" target="rightFrame">50M</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=100M" target="rightFrame">100M</a></img></p>
			</td>
		  </tr>
		  <tr><td height="2"></td></tr>
		  
		  <tr><td id="navbg1" class="left_nav_closed" ><div class="font1">单车</div></td></tr>
		  <tr valign="top" id="submenu1" style="display: none">
		    <td class="left_nav_bgshw" height="75">
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=小黄车" target="rightFrame">小黄车</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=死飞" target="rightFrame">死飞</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=山地车" target="rightFrame">山地车</a></img></p>
			</td>
		  </tr>
		  <tr><td height="2"></td></tr>
		  
		  <tr><td id="navbg2" class="left_nav_closed" ><div class="font1">汽车</div></td></tr>
		  <tr valign="top" id="submenu2" style="display: none">
		    <td class="left_nav_bgshw" height="50">
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=越野车" target="rightFrame">越野车</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=小轿车" target="rightFrame">小轿车</a></img></p>
			</td>
		  </tr>
		  <tr><td height="2"></td></tr>

		  <tr><td id="navbg3" class="left_nav_closed" ><div class="font1">球类</div></td></tr>
		  <tr valign="top" id="submenu3" style="display: none">
		    <td class="left_nav_bgshw" height="100">
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=羽毛球" target="rightFrame">羽毛球</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=足球" target="rightFrame">足球</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=篮球" target="rightFrame">篮球</a></img></p>
			   <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=乒乓球" target="rightFrame">乒乓球</a></img></p>
			</td>
		  </tr>
		  <tr><td height="2"></td></tr>
		  
		  <tr><td id="navbg4" class="left_nav_closed" ><div class="font1">书籍</div></td></tr>
		  <tr valign="top" id="submenu4" style="display: none">
		    <td class="left_nav_bgshw tdbtmline" height="100">
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=计算机类" target="rightFrame">计算机类</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=文学类" target="rightFrame">文学类</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=漫画类" target="rightFrame">漫画类</a></img></p>
			  <p class="left_nav_link"><img src="images/left_nav_arrow.gif">&nbsp;&nbsp;<a href="smallclass?small_class=小说类" target="rightFrame">小说类</a></img></p>
			</td>
		  </tr>
		  <tr><td height="2"></td></tr>
		 
		  <tr valign="top"><td height="100%" align="center"><div class="copycct"><br /><strong>出品小队：</strong><br><strong>占旭鹏、金天峰、章智伦组</strong><br>计算机141</div></td></tr>
		  <tr><td height="10"><img src="images/left_nav_bottom.gif" height="10"></img></td></tr>
		  <tr><td height="10" bgcolor="#e5f0ff">&nbsp;</td></tr>
		</table>
	</div>
</body>
</html>