<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
欢迎光临
	<form action="login" method="get">
		<table>
			<tr>
				<td>用户：</td>
				<td><input name="loginname" type="text"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input name="password" type="password"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<c:if test="${message !=null }">
						<p style="color: red">${message }</p>
					</c:if>
				</td>
			<tr>
				<td colspan="2">
					<input type="submit" value="登录"/>
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>