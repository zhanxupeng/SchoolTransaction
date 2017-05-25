<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校易网</title>
</head>
<body>
<table>
<c:forEach var="commodity" items="${list }">
	<tr>
		<td>
		<table>
			<tr>
				<td width="30%">
					<img src="image/${commodity.picture }" width="100%" height="250px"/><br>
				</td>
				<td width="50%" valign="top">
					${commodity.name }<br>
					<fmt:formatDate value="${commodity.end_date }" dateStyle="long"/>截止<br>
					${commodity.detail }<br>
					售价：￥${commodity.big_id }<br>
					学校：${commodity.school }
				</td>
				<td width="20%" align="center">
					<a href="changeCommodity?commid=${commodity.commid }">修改</a>||
					<a href="deleteCommodity?commid=${commodity.commid }">删除</a>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>