<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>人事管理系统 ——后台登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<!-- 导入jquery插件 -->
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="js/fkjava_timer.js"></script>
<link rel="stylesheet" href="css/StyleCss.css" type="text/css">
<link href="css/css.css" type="text/css" rel="stylesheet" />
<script language="javascript" src="js/1.js"></script>
<script type="text/javascript">
		function getdate(){
				var date = new Date();
				//转换格式
				var d1 = date.toLocaleString();
				var div1= document.getElementById("times");
		//向标签里写入内容
				div1.innerHTML=d1;
			}
		//设置定时器	
		setInterval("getdate();",1000);
</script>
<title>Insert title here</title>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="320" height="80" class="topbg"><img src="images/top_logo.gif" width="320" height="80"></td>
	<td class="topbg">
	  <table width="100%" border="0" cellpadding="0" cellspacing="0">
	    <tr>
		  <td height="50" class="toplink" align="right"><img src="images/top_home.gif">&nbsp;&nbsp;<a href="newmain">网站首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/top_exit.gif">&nbsp;&nbsp;<a href="userquit">注销</a>&nbsp;<a href="toregister">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<tr>
		  <td height="30" class="topnavbg">
		    <table width="100%" border="0" cellpadding="0" cellspacing="0">
			  <tr>
			    <td width="60"><img src="images/StatBarL.gif" width="60" height="30"></td>
				<td class="topnavlh" align="left"><img src="images/StatBar_admin.gif">&nbsp;&nbsp;当前用户：【<a href="changeUser">${user.username }</a>】</td>
				<td class="topnavlh" align="right"><img src="images/StatBar_time.gif">&nbsp;&nbsp;<span id="times"></span>
  			 </td>
                <td width="3%"></td>
			  </tr>
			</table>
		  </td>
		</tr>
	  </table>
	</td>
  </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr height="120">
		<td width="60%" align="right">
			<form action="bigclassSelect" target="rightFrame" method="get">
					<input type="text" name="bigclass" class="search_txt" /> <input
						type="submit" class="search_bt" value="搜索" />
			</form>
		</td>
		<td width="40%" align="left">
			<form action="torent" method="get">
				<div class="there">
					<input type="submit" class="chuZu_bt" value="我要出租" />
				</div>	
			</form>
		</td>
	</tr>
</table>
<iframe height="900" width="12%" frameborder="0"
	src="left" name="leftFrame" id="leftFrame"
	title="leftFrame" scrolling="no" align="left"></iframe>
<table  height="900" width="88%">
	<tr>
		<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
			 <tr><td height="10"></td></tr>
			 <tr>
			    <td width="15" height="32" align="left"><img src="images/main_locleft.gif" width="15" height="32"></td>
				<td class="main_locbg font2" align="left"><img src="images/pointer.gif">&nbsp;&nbsp;&nbsp;商品浏览  &gt; 分类商品</td>
				<td width="15" height="32" align="left"><img src="images/main_locright.gif" width="15" height="32"></td>
			 </tr>
		</table>
		</td>
	</tr>
	<tr height="900">
		<td width="100%">
		<iframe height="1200" width="88%" frameborder="0"
			src="right" name="rightFrame" id="rightFrame"
			title="right" scrolling="no" align="left"></iframe>
		</td>
	</tr>
</table>	

</body>
</html>