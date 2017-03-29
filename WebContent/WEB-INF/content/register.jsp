<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h3>注册页面</h3>
	<form action="register" method="post">
		<table>
			<tr>
				<td>*登录账号：(1000到9999之间的数字)</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="loginname"/>
				</td>
			</tr>
			<c:if test="${message!=null }">
			<tr>
				<td><p style="color: red">${message }</p></td>
			</c:if>
			<tr>
				<td>*密码：(6到8位数字字母组合)</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="password"/>
				</td>
			</tr>
			<tr>
				<td>您的名字：</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="username"/>
				</td>
			</tr>
			<tr>
				<td>
					性别:
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="sex" value="男"/>男&nbsp;
					<input type="radio" name="sex" value="女"/>女
				</td>
			</tr>
			<tr>
				<td>
					邮箱：
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="email"/>
				</td>
			</tr>
			<tr>
				<td>
					手机号码：
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="phone"/>
				</td>
			</tr>
			<tr>
				<td>
					身份证号：
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="card_id"/>
				</td>
			</tr>
			<tr>
				<td>
					支付宝账号：
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="dollar_id"/>
				</td>
			</tr>
			<tr>
				<td>
					图片：
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="image"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="提交"/>
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>