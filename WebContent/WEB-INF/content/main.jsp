<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/StyleCss.css" type="text/css">
<script language="javascript" src="js/1.js"></script>



<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div>
			<p class="navbar-text navbar-left">
				<a href="main.jsp">主页</a>
			</p>
			<c:choose>
				<c:when test="${empty user }">
					<p class="navbar-text navbar-right">
						<a href="loginForm">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
					<p class="navbar-text navbar-right">
						<a href="toregister">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
				</c:when>
				<c:otherwise>
					<p class="navbar-text navbar-right">
						<a href="userquit">退出</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
					<p class="navbar-text navbar-right">
						尊敬的[<a href="changeUser">${user.username }]</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	</nav>
	<center>
		<div class="zero">
		
			<div class="one">
				<img src="image/xiaoyi.jpg" width="150px" height="60px" />
			</div>
			<div class="two">
				<form action="bigclassSelect" target="leftFrame" method="get">
					<input type="text" name="bigclass" class="search_txt" /> <input
						type="submit" class="search_bt" value="搜索" />
				</form>
			</div>
			<form action="torent" method="get">
				<div class="there">
					<input type="submit" class="chuZu_bt" value="我要出租" />
				</div>
					
			</form>
			<div id="times"></div>
			<script type="text/javascript">
			function getdate(){
				var date = new Date();
				//转换格式
				var d1 = date.toLocaleString();
				var div1= document.getElementById("times");
		//向标签里写入内容
				div1.innerHTML=d1;
			}
		//设置定时器	
		setInterval("getdate();",1000);
			</script>
			<div class="clear"></div>
		</div>

		<div class="zero1">
			<div class="fore">
				<div class="fore-2">
					<a href="personpage" target="leftFrame" style="color:#ffffff">个人主页</a>
				</div><br/>
				<div class="fore-2"><input class="search_bt1" type="button" value="闪讯" onclick="show()"></div>
				
				<div class="fore-3" id="fore-2" style="display:none">
					<a href="smallclass?small_class=10M" target="leftFrame" style="color:#ffffff">10M</a>
				</div>
				
				<div id="fore-3" style="display:none">
					<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">20M</a>
				</div><br/>
				<div class="fore-2"><input class="search_bt1" type="button" value="单车" onclick="show1()"></div>
					<div id="fore-11" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">小黄车</a></div>
					<div id="fore-12" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">死飞</a></div>
					<div id="fore-13" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">山地车</a></div><br/>
				<div class="fore-2"><input class="search_bt1" type="button" value="电驴" onclick="show2()"></div>
					<div id="fore-21" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">男款电驴</a></div>
					<div id="fore-22" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">女款电驴</a></div>
					<div id="fore-23" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">中性电驴</a></div><br/>
					
				<div class="fore-2"><input class="search_bt1" type="button" value="汽车" onclick="show3()"></div>
					<div id="fore-31" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">越野车</a></div>
					<div id="fore-32" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">小轿车</a></div><br/>
					
				<div class="fore-2"><input class="search_bt1" type="button" value="球类" onclick="show4()"></div>
					<div id="fore-41" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">羽毛球</a></div>
					<div id="fore-42" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">足球</a></div>
					<div id="fore-43" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">篮球</a></div>
					<div id="fore-44" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">乒乓球</a></div><br/>
				<div class="fore-2"><input class="search_bt1" type="button" value="书籍" onclick="show5()"></div>
					<div id="fore-51" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">计算机类</a></div>
					<div id="fore-52" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">文学类</a></div>
					<div id="fore-53" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">漫画类</a></div>
					<div id="fore-54" style="display:none">	<a href="smallclass?small_class=20M" target="leftFrame" style="color:#ffffff">小说类</a></div><br/>
				<div class="fore-2">敬请期待</div>
			</div>
			<div class="fore1">
				<iframe height="100%" width="100%" frameborder="0"
					src="http://www.taobao.com" name="leftFrame" id="leftFrame"
					title="leftFrame" scrolling="yes"></iframe>
			</div>
		</div>
	</center>
</body>



</html>