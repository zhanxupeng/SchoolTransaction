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
<center>
	<table  width="100%">
		<tr>
			<th>订单号</th>
			<th>名称</th>
			<th>详情</th>
			<th>卖家</th>
			<th>下单时间</th>
			<th>结束时间</th>
			<th>修改</th>
		</tr>
		<c:forEach var="order" items="${list }"> 
			<tr>
				<td align="center">${order.order_id }</td>
				<td align="center">${order.name }</td>
				<td align="center" width="30%">${order.detail }</td>
				<td align="center">${order.youruser.username }</td>
				<td align="center">
					<fmt:formatDate value="${order.deal_date}" dateStyle="long"/>
				</td>
				<td align="center">
					<fmt:formatDate value="${order.end_date }" dateStyle="long"/>
				</td>
				<td align="center">
					<a href="deleteByCommid?order_id=${order.order_id }">删除</a>
				</td>
		</c:forEach>
	</table>
</center>
</body>
</html>