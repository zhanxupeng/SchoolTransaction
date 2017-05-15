<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="js/AjaxRequest.js"></script>
<script type="text/javascript">
function getProvince(){
	var loader=new net.AjaxRequest("ZoneServlet?action=getProvince&nocache="+new Date().getTime(),deal_getProvince,onerror,"GET");
}
function deal_getProvince(){
	provinceArr=this.req.responseText.split(",");
	for(i=0;i<provinceArr.length;i++){
		document.getElementById("big_class").options[i]=new Option(provinceArr[i], provinceArr[i]);
	}
	if(provinceArr[0]!=""){
		getCity(provinceArr[0]);
	}
}
window.load=function(){
	getProvince();
}
window.onload=function(){
	getProvince();
}
function getCity(selProvince){
	var loader=new net.AjaxRequest("ZoneServlet?action=getCity&parProvince="+selProvince+"&nocache="
			+new Date().getTime(),deal_getCity,onerror,"GET");
}
function deal_getCity(){
	cityArr=this.req.responseText.split(",");
	document.getElementById("small_class").length=0;
	for(i=0;i<cityArr.length;i++){
		document.getElementById("small_class").options[i]=new Option(cityArr[i],cityArr[i]);
	}
}
function onerror(){}
</script>
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
			<select name="big_class" id="big_class" onchange="getCity(this.value)">
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
			<select name="small_class" id="small_class">
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