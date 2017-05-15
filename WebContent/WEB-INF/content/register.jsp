<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" media="screen" href="css/1.css">
<link type="text/css" rel="stylesheet" media="screen" href="css/2.css">
<link type="text/css" rel="stylesheet" media="screen" href="css/3.css">
</head>
<body>
<div id="wrapper">

		<div class="login_top_wrap">
			<div class="login_top">
				<div class="login_logo">校易网是一个深受广大学生欢迎的网站</div>
			</div>
		</div>
<div class="kongbai">
</div>

<center>
	<form action="register" method="post" enctype="multipart/form-data">
		<table>
			<tr>
			    <td align="right">
			    	账号:
			    </td>
				<td>
					<input class="inputbox" id="login_account" type="text" name="loginname"/>
				</td>
			</tr>
			<tr>
				<c:if test="${message!=null }">
			
				<td><p style="color: red">${message }</p></td>
			</c:if>
			</tr>
			<tr>
			</tr>
			<tr>
			<td align="right">密码:</td>
				<td>
					<input class="inputbox" type="password" name="password"/>
				</td>
			</tr>
			
			<tr>
			<td align="right">您的名字:</td>
				<td>
					<input class="inputbox" type="text" name="username"/>
				</td>
			</tr>
			<tr>
				<td align="right">
					性别:
				</td>
				<td>
				<input  type="radio" name="sex" value="男"/>男&nbsp;
					<input type="radio" name="sex" value="女"/>女
				</td>
			</tr>
			
			
			<tr>
			     <td align="right">
					邮箱:
				</td>
				<td>
					<input class="inputbox" type="text" name="email"/>
				</td>
			</tr>
			
			<tr>
				<td align="right">
					手机号码:
				</td>
				<td>
					<input class="inputbox" type="text" name="phone"/>
				</td>
			</tr>
			
			<tr>
			<td align="right">
					身份证号:
				</td>
				<td>
					<input class="inputbox" type="text" name="card_id"/>
				</td>
			</tr>
			
			<tr>
					<td align="right">
					支付宝账号:
				</td>
				<td>
					<input class="inputbox" type="text" name="dollar_id"/>
				</td>
			</tr>
				
			<tr>
			<td align="right">
					头像:
				</td>
				<td>
					<input type="file" name="file"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="register_btn" id="register_btn"  />
				</td>
			</tr>
		</table>
	</form>
</center>

</div>
</body>
<style>
body {
	background: #EBEBEB;
}

#wrapper {
	background: #fff;
}

</style>
</html>