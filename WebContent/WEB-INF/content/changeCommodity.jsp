<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/css.css" type="text/css" rel="stylesheet" />
<title>校易网</title>
</head>
<body>
<center>
	<form action="surechangeCommodity" enctype="multipart/form-data" method="post">
		<input type="hidden" name="commid" value="${commodity.commid }"/>
	<table>
		<tr>
			<td>
				名称：
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="name" value="${commodity.name }"/>
			</td>
		</tr>
		<tr>
			<td>
				详情：
			</td>
		</tr>
		<tr>
			<td>
				<textarea rows="5" cols="30" 
					name="detail" >${commodity.detail }</textarea>
			</td>
		</tr>
		<tr>
			<td>
				图片：
			</td>
		</tr>
		<tr>
			<td>
				<input type="file" name="file">
			</td>
		</tr>
		<tr>
			<td>
				截止日期：
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="end_date"
				 value="<fmt:formatDate value='${commodity.end_date }' pattern='yyyy-MM-dd'/>">
			</td>
		</tr>
		<tr>
			<td>
				价格：
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="big_id" value="${commodity.big_id }"/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="提交"/>
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>