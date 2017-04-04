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
	<form action="paydollar" method="post">
		<input type="hidden" name="commid" value="${commid }">
		<table>
			<tr>
				<td>支付账号：</td>
				<td>
					<input type="text" name="dollarid"/>
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td>
					<input type="password" name="dollarpwd"/>
				</td>
			</tr>
			<c:if test="${message !=null }">
			<tr>
					<td colspan="2" align="center">
					<p style="color: red">${message }</p>
					</td>
			</tr>
			</c:if>
			<tr>
				<td colspan="2">
					<input type="submit" name="支付"/>
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>