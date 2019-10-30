<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生信息修改页面</title>
</head>
<body>
<div>
	<form action="update" method="get">
		学生编号：<input type="text" name="id" value="${user.id}" readonly/><br/>
		学生姓名：<input type="text" name="name" value="${user.name}"/><br/>
		学生性别：
		<select name="sex">
			<option value="1">男
			<option value="2">女
		</select><br/>
		<input type="submit" value="确认修改">
	</form>
	
</div>
	
</body>
</html>