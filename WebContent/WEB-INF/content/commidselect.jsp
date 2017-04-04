<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<table width="100%">
	<tr>
		<td width="50%" height="300px">
			<img src="image/${commodity.picture }" width="100%" height="100%"/><br>
		</td>
		<td>
			${commodity.name }<br>
			${commodity.detail }<br>
			<div style="color:red">促销价：￥${commodity.big_id }</div><br>
			<div class="two">
			<a href="topaydollar?commid=${commodity.commid }">购买</a>
			</div>
		</td>
	</tr>
</table>
</center>
</body>
</html>