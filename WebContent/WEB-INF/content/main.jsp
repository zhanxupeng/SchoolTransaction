<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/StyleCss.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation"> 
    <div class="container-fluid"> 
    <div>
        <p class="navbar-text navbar-left"><a href="main.jsp">主页</a></p>
        <c:choose>
        <c:when test="${empty user }"> 
        <p class="navbar-text navbar-right"><a href="loginForm">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p class="navbar-text navbar-right"><a href="toregister">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        </c:when>
        <c:otherwise>
        <p class="navbar-text navbar-right"><a href="main.jsp">退出</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p class="navbar-text navbar-right">尊敬的[<a href="changeUser">${user.username }]</a>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        </c:otherwise>
        </c:choose> 
    </div> 
    </div> 
</nav>
<center>
<div class="zero">
	<div class="one"><img src="image/xiaoyi.jpg" width="150px" height="60px"/></div>
	<div class="two"><input type="text" name="find" class="search_txt" /> 
			<input type="submit" class="search_bt" value="搜索" "/></div>
	<div class="there"><input type="submit" class="chuZu_bt" value="我要出租"/></div>
	<div class="clear"></div>
</div>

<div class="zero1">
	<div class="fore">
		<div class="fore-1">
			闪讯：
		</div>
		<div class="fore-1">
			<a href="toshop?small_id=1" target="leftFrame">10M</a>
		</div>
		<div class="fore-1">
			<a href="toshop?small_id=2" target="leftFrame">20M</a>
		</div>
		<div class="fore-1">单车</div>
		<div class="fore-1">电驴</div>
		<div class="fore-1">汽车</div>
		<div class="fore-1">球类</div>
		<div class="fore-1">书籍</div>
		<div class="fore-1">敬请期待</div>
	</div>
	<div class="fore1">
	<iframe height="100%" width="100%" frameborder="0" src="https://www.baidu.com"
				name="leftFrame" id="leftFrame" title="leftFrame" scrolling="yes"></iframe>
	</div>
</div>
</center>
</body>
</html>