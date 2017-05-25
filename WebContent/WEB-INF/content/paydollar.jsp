<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="textml; charset=UTF-8">
<link href="css/css.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/StyleCss.css" type="text/css">
<link type="text/css" rel="stylesheet" media="screen" href="css/1.css">
<link type="text/css" rel="stylesheet" media="screen" href="css/2.css">
<link type="text/css" rel="stylesheet" media="screen" href="css/3.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
<title>Insert title here</title>
<style>
body {
background-color:#e5f0ff;
color:#1262b3;
font-family:"宋体",Arial;
font-size:14px;
margin:0 auto;
text-align:center;
}

p {
background-color:#e5f0ff;
color:#1262b3;
font-family:"宋体",Arial;
font-size:20px;
margin:0 auto;
text-align:center;
}
</style>
</head>
<body>
<center>
	<form action="paydollar" method="post">
		<input type="hidden" name="commid" value="${commid }">
		<table>
	<!-- 	<tr>
			<td rowspan="3"><img src="images/zhifu.png" width="60" height="60"></td>
		</tr> -->
			<tr >
				<td align="right"><img src="images/zhifu.png" width="40" height="40"></td>
				<td ><p align="left">中国建设银行</p></td>
			</tr>
			<tr>
				<td align="right">支付账号：</td>
				<td>
					<input class="inputbox" type="text" name="dollarid"/>
				</td>
			</tr>
			<tr>
				<td height="5"></td>
				<td></td>
			</tr>
			
			<tr>	
				<td align="right">密码：</td>
				<td>
					<input class="inputbox" type="password" name="dollarpwd"/>
				</td>
			</tr>
			<c:if test="${message !=null }">
			<tr>
					<td colspan="2" align="center">
					<p style="color: red">${message }</p>
					</td>
			</tr>
			</c:if>
			<tr><td height="5"></td>
			</tr>
			<tr><td></td>
				<td colspan="2">
					<input style="width:250px;height:30px" class="btn btn-success" type="submit"  value="确认付款"/>
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>
