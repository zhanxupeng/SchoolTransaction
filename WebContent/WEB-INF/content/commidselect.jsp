<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
<style>
.stroke{
color: transparent;
-webkit-text-stroke: 2px green;
letter-spacing: 0.4em;
font-size:30px;
font-style: italic;
background-color: }
.press {
	font-size:25px;
	color:red;
	font-weight:bold;
	font-family:华文行楷；
}
</style>
<title>校易网</title>
</head>
<body>
<center>
<table width="100%">
	<tr>
		<td width="100px"></td>
		<td width="20%" height="200px">
			<img src="image/${commodity.picture }" width="100%" height="100%"/><br>
		</td>
		<td>
			<div class="stroke" >&nbsp;&nbsp;${commodity.name }</div><br>
			${commodity.detail }<br>
			<div class="press">促销价：￥${commodity.big_id }</div><br>
			<div class="two">
			<form action="topaydollar" method="post">
				<input type="hidden" name="commid" value="${commodity.commid }"/>
				<input type="submit" style="width:250px;height:30px" class="btn btn-success" value="购买">
			</form>
			</div>
		</td>
	</tr>
</table>
</center>
</body>
</html>