<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/css.css" type="text/css" rel="stylesheet" />
<title>校易网</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<img src="image/${user.image }" width="150px" height="140px"/><br>
			</td>
			<td>
				账号：${user.loginname }<br>
				姓名：${user.username }<br>
				性别：${user.sex }<br>
				邮箱：${user.email }<br>
				手机：${user.phone }<br>
				身份证号：${user.card_id }<br>
				支付宝号：${user.dollar_id }<br>
				<a href="useridselect?user_id=${user.loginname }">我的出租</a>||
				<a href="selectByuserId">我的订单</a>
			</td>
		</tr>
	</table>
</body>
</html>