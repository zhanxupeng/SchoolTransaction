<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<h1>出租，出租，出租，我要出租！</h1><br>
	<form onsubmit="return jj()" role="form" action="insertcommodity" method="post" enctype="multipart/form-data">
	<table>
	<tr>
		<td>
		    <h3>商品名称：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<input type="text" class="form-control" name="name" id="name" />
		</td>
	</tr>
	<tr>
		<td>
			<h3>商品详情：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<textarea class="form-control" rows="5" cols="60" wrap="true" name="detail" id="detail" ></textarea>
		</td>
	</tr>
	<tr>
		<td>
			<h3>图片：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<input type="file" name="file" id="file">
		</td>
	</tr>
	<tr>
		<td>
			<h3>截止日期：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<input class="form-control" type="text" name="end_date" id="end_date" />
		</td>
	</tr>
	<tr>
		<td>
			<h3>大类：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<select class="form-control" name="big_class" id="big_class" onchange="getCity(this.value)">
			</select>
		</td>
	</tr>
	<tr>
		<td>
			<h3>小类：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<select class="form-control" name="small_class" id="small_class" >
			</select>
		</td>
	</tr>
	<tr>
		<td>
			<h3>学校：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<select class="form-control" name="school" id="school">
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
			<h3>售价：</h3>
		</td>
	</tr>
	<tr>
		<td>
			<input class="form-control" name="big_id" name="big_id" type="text"/>
		</td>
	</tr>
	<tr>
		<td height="50px">
			<input style="width:200px" class="btn btn-success" type="submit" value="提交"/>&nbsp;&nbsp;
			<input style="width:200px" class="btn btn-warning" type="reset" value="重置"/>
		</td>
	</tr>
</table>
</form>
</center>
</body>
<script type="text/javascript">
function jj(){
	if(document.getElementById("name").value==''){
	   alert('商品名称不能为空');
	   return false;
	}
	if(document.getElementById("detail").value==''){
		   alert('商品详情不能为空');
		   return false;
		}
	if(document.getElementById("file").value==''){
		   alert('图片不能为空');
		   return false;
		}
	if(document.getElementById("end_date").value==''){
		   alert('截止日期不能为空');
		   return false;
		}
	if(document.getElementById("big_class").value==''){
		   alert('大类不能为空');
		   return false;
		}
	if(document.getElementById("school").value==''){
		   alert('学校不能为空');
		   return false;
		}
	if(document.getElementById("big_id").value==''){
		   alert('售价不能为空');
		   return false;
		}
	}
</script>
</html>