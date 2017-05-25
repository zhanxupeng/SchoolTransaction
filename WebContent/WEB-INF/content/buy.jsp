<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/StyleCss.css" type="text/css">
<title>校易网</title>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr height="120">
		<td width="50%" align="right">
			<form action="bigclassSelect" target="leftFrame" method="get">
					<input type="text" name="bigclass" class="search_txt" /> <input
						type="submit" class="search_bt" value="搜索" />
			</form>
		</td>
		<td width="50%" align="left">
			<form action="torent" method="get">
				<div class="there">
					<input type="submit" class="chuZu_bt" value="我要出租" />
				</div>	
			</form>
		</td>
	</tr>
</table>
</body>
</html>