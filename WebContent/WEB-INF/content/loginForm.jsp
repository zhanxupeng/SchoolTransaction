<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" media="screen" href="css/1.css">
<link type="text/css" rel="stylesheet" media="screen" href="css/2.css">
<link type="text/css" rel="stylesheet" media="screen" href="css/3.css">
</head>
<body>
	<div id="wrapper">

		<div class="login_top_wrap">
			<div class="login_top">
				<div class="login_logo">校易网是一个深受广大学生欢迎的网站</div>
			</div>
		</div>

		<div class="login_content_wrap clearfix">
			<div class="login_content clearfix">
				<div class="login">
					<div class="tip_wrap" id="page_error">
						<p class="tip_attr error_tip hidden">邮箱或密码错误！</p>
					</div>
					
					
					<form accept-charset="UTF-8" action="login" autocomplete="off"
						class="new_user" id="new_user" method="get">
						<div style="margin: 0; padding: 0; display: inline">
							<input name="utf8" type="hidden" value="&#x2713;" /><input
								name="authenticity_token" type="hidden"
								value="TNF1icnet9uEKF5kPmZFseYjeb9T1MM5YiI1BLrnl2c=" />
						</div>
						<div class="input_line_wrap clearfix">
							<!-- <a id="login_clear" class="login_clear" href="javascript:void(0)">X</a> -->
							<div class="input_line mt25">
								<input class="inputbox" id="login_account" name="loginname"
									type="text" value="" placeholder="登录邮箱" />
							</div>
						</div>
						<div class="input_line_wrap clearfix">
							<div class="input_line mt25">
								<input class="inputbox" id="password" name="password"
									type="password" placeholder="密码" />
							</div>
						</div>
    <p class="login_extra_opt">
				<input type="checkbox" id="remember_me" class="remember_me" name="user[remember_me]" value="1" checked="checked" /> 
				<span class="left lh14">&nbsp;两周内自动登录</span>
				<a id="forget_a" class="forget_password" href="javascript:void(0);">我忘记了密码?</a>
			</p>
			<c:if test="${message !=null }">
						<p style="color: red">${message }</p>
					</c:if>
						<div class="login_btns clearfix">
							<!-- <a href="javascript:void(0)" id="login_btn" class="login_btn">登录</a> -->
							<input type="submit"  id="login_btn" class="login_btn"/>
						</div>
					</form>
					<div class="c"></div>
					<p class="alR pt10 pr20">
						<a href="toregister">还没有帐号？立即注册 &gt;&gt;</a>
					</p>
				</div>
			</div>
			</div>
			</div>
		
<%-- <center>
	<form action="login" method="get">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input name="loginname" type="text"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input name="password" type="password"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<c:if test="${message !=null }">
						<p style="color: red">${message }</p>
					</c:if>
				</td>
			<tr>
				<td colspan="2">
					<input type="submit" value="登录"/>
				</td>
			</tr>
		</table>
	</form>
</center> --%>
</body>
<style>
body {
	background: #EBEBEB;
}

#wrapper {
	background: #fff;
}
</style>
</html>