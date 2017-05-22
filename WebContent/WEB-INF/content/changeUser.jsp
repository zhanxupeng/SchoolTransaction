<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<center>
<table class="table" align="center">
   <form onsubmit="return jj()" class="bs-example bs-example-form" role="form" action="userchange" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr class="success">
				<td>登录名：</td>
				<td>
				${user.loginname }
				<input type="hidden" name="loginname" value="${user.loginname }"/>
				</td>
				
			</tr>
			<tr class="warning">
				<td valign="middle">密码：</td>
				<td>
				<div class="input-group">
				<input type="password" class="form-control" value="${user.password }" name="password" id="password"/>
				</div>
				</td>
			</tr>
			<tr class="active">	
				<td>用户名：</td>
				<td>
				<div class="input-group">
				<input type="text" class="form-control" value="${user.username }" name="username" id="username"/>
				</div>
				</td>
			</tr>
			<tr class="success">
				<td>性别：</td>
				<td>
				<div class="input-group">
					<c:choose>
						<c:when test="${user.sex==null }">
							<input type="radio" name="sex" value="boy"/>男&nbsp;
							<input type="radio" name="sex" value="girl"/>女
						</c:when>
						<c:when test="${user.sex=='boy' }">
							<input type="radio" name="sex" value="boy" checked="checked"/>男&nbsp;
							<input type="radio" name="sex" value="girl"/>女
						</c:when>
						<c:otherwise>
						<input type="radio" name="sex" value="boy"/>男&nbsp;
							<input type="radio" name="sex" value="girl" checked="checked"/>女
						</c:otherwise>
					</c:choose>
				</div>
				</td>
			</tr>
			<tr class="warning">
				<td>email:</td>
				<td>
				<div class="input-group">
					<input type="text" class="form-control" name="email" id="email" value="${user.email }"/>
					</div>
				</td>
			</tr>
			<tr class="active">
				<td>phone:</td>
				<td>
				<div class="input-group">
					<input type="text" class="form-control" name="phone" id="phone" value="${user.phone }"/>
					</div>
				</td>
			</tr>
			<tr class="success">
				<td>身份证号：</td>
				<td>
				<div class="input-group">
					<input type="text" class="form-control" name="card_id" id="card_id" value="${user.card_id }"/>
					</div>
				</td>
			</tr>
			<tr class="warning">
				<td>支付宝账号:</td>
				<td>
				<div class="input-group">	
					<input type="text" class="form-control" name="dollar_id" id="dollar_id" value="${user.dollar_id }"/>
					</div>
				</td>
			</tr>
			<tr class="active">
				<td>头像:</td>
				<td>
				<div class="input-group">
					<input type="file"  name="file" id="file" >
					</div>
				</td>
			</tr>
			<tr class="success">
				<td colspan="2" height="50px">
					<input style="width:300px" class="btn btn-success" type="submit" name="提交" value="提  交"/>
					
				</td>
			</tr>
		</table>
	</form>
</table>
</center>
</body>
<script type="text/javascript">
function jj(){
	if(document.getElementById("password").value==''){
	   alert('密码不能为空');
	   return false;
	}
	if(document.getElementById("username").value==''){
		   alert('用户名不能为空');
		   return false;
		}
	if(document.getElementById("email").value==''){
		   alert('email不能为空');
		   return false;
		}
	if(document.getElementById("phone").value==''){
		   alert('phone不能为空');
		   return false;
		}
	if(document.getElementById("card_id").value==''){
		   alert('身份证号不能为空');
		   return false;
		}
	if(document.getElementById("dollar_id").value==''){
		   alert('支付宝账号不能为空');
		   return false;
		}
	}
</script>
</html>