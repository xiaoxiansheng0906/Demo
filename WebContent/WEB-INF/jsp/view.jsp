<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息展示</title>
</head>
<body>
<table>
	<tr>
		<td>学生编号</td>
		<td>学生姓名</td>
		<td>学生性别</td>
		<td>修改</td>
		<td>删除</td>
	</tr>
	<c:forEach items="${users }" var="user">
	<tr>
		<td>${user.id }</td>
		<td>${user.name }</td>
		<td>${user.sex == 1 ? "男" : "女"}  </td>
		<td><a href="toedit?name=${user.name }">修改信息</a></td>
		<td><a href="del?id=${user.id }">删除信息</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>