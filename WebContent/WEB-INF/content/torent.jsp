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
	出租，出租，出租，我要出租！<br>
	<form action="insertcommodity" method="post" enctype="multipart/form-data">
	<table>
	<tr>
		<td>
			商品名称：
		</td>
	</tr>
	<tr>
		<td>
			<input type="text" name="name"/>
		</td>
	</tr>
	<tr>
		<td>
			商品详情：
		</td>
	</tr>
	<tr>
		<td>
			<textarea rows="5" cols="60" wrap="true" name="detail"></textarea>
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
			<input type="text" name="end_date"/>
		</td>
	</tr>
	<tr>
		<td>
			大类：
		</td>
	</tr>
	<tr>
		<td>
			<select name="big_class">
				<option>闪讯</option>
				<option>单车</option>
				<option>电驴</option>
				<option>汽车</option>
				<option>球类</option>
				<option>书籍</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			小类：
		</td>
	</tr>
	<tr>
		<td>
			<select name="small_class">
				<option>10M</option>
				<option>20M</option>
				<option>50M</option>
				<option>100M</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			学校：
		</td>
	</tr>
	<tr>
		<td>
			<select name="school">
				<option>浙江农林大学</option>
				<option>杭州电子科技大学</option>
				<option>浙江理工大学</option>
				<option>浙江工业大学</option>
				<option>浙江大学</option>
				<option>浙江财经大学</option>
				<option>浙江工商大学</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			售价：
		</td>
	</tr>
	<tr>
		<td>
			<input name="big_id" type="text"/>
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="提交"/>&nbsp;&nbsp;
			<input type="reset" value="重置"/>
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>