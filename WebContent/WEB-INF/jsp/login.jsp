<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>

<style type="text/css">
        body{
            background: #deeffa;
        }
        form{
            height: 200px;
            width: 400px;
            border: 0px solid red;
            text-align: center;
            margin: 100px auto;
        }
        input{
            height: 40px;
            width: 220px;
            border: 0px;
            margin-top: 10px;
            border-radius: 10px;
            padding-left: 20px;
        }
        input[type=submit]{
            width: 160px;
            height: 40px;
            border-radius: 20px;
            background: #fad65c;
            font-size: 18px;
            font-weight: bold;
        }
        .login{
            margin: 10px auto 0px;
            font-weight: bold;
            width: 290px;
            line-height: 40px;
            background: #fad65c;
            border-radius: 0px 20px 0px 20px ;

        }
    </style>
</head>
<body>
<%
//设置获取request字符串编码格式
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
String error = "   ";%>
<form method="post" action="${classpath }login">
    <p class="login">用户登录</p>
    用户：<input type="text" name="name" placeholder="请输入账号"><br/>
    密码：<input type="passWord" name="password" placeholder="请输入密码"><br/>
    <input type="submit"value="登录"><a href="toregist">注册</a>
	<%error = (String)request.getParameter("error");%>
	<div>
	
	<%=error %>
	</div>
</form>
</body>
</html>