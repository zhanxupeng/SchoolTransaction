<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach var="commodity" items="${list }">
	<tr>
		<td>
		<table>
			<tr>
				<td>
					<img src="image/${commodity.user.image }" width="150px" height="140px"/><br>
					<center>${commodity.user.username}</center>
				</td>
				<td>
					<a href="commidselect?commid=${commodity.commid }">
					${commodity.name }</a><br>
					<fmt:formatDate value="${commodity.end_date }" dateStyle="long"/>截止<br>
					${commodity.detail }<br>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>