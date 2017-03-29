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
	<form action="userchange" method="post">
		<table>
			<tr>
				<td>登录名：</td>
				<td>
				${user.loginname }
				<input type="hidden" name="loginname" value="${user.loginname }"/>
				</td>
				
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" value="${user.password }" name="password"/></td>
			</tr>
			<tr>	
				<td>用户名：</td>
				<td><input type="text" value="${user.username }" name="username"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<c:choose>
						<c:when test="${user.sex==null }">
							<input type="radio" name="sex" value="boy"/>男&nbsp;
							<input type="radio" name="sex" value="girl"/>女
						</c:when>
						<c:when test="${user.sex=='boy' }">
							<input type="radio" name="sex" value="boy" checked="checked"/>男&nbsp;
							<input type="radio" name="sex" value="girl"/>女
						</c:when>
						<c:otherwise>
						<input type="radio" name="sex" value="boy"/>男&nbsp;
							<input type="radio" name="sex" value="girl" checked="checked"/>女
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td>email:</td>
				<td>
					<input type="text" name="email" value="${user.email }"/>
				</td>
			</tr>
			<tr>
				<td>phone:</td>
				<td>
					<input type="text" name="phone" value="${user.phone }"/>
				</td>
			</tr>
			<tr>
				<td>身份证号：</td>
				<td>
					<input type="text" name="card_id" value="${user.card_id }"/>
				</td>
			</tr>
			<tr>
				<td>支付宝账号:</td>
				<td>	
					<input type="text" name="dollar_id"" value="${user.dollar_id }"/>
				</td>
			</tr>
			<tr>
				<td>头像:</td>
				<td>
					<input type="text" name="image" value="${user.image }"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="提交"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>