<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎注册</title>
<style type="text/css">
        body{
            background: #deeffa;
        }
        form{
            height: 240px;
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
    <script type="text/javascript">
	    function $(parm){
	    	return document.getElementById(parm);
	    }
    	function checkAll() {
			
			var userPass = $("userPass");
			var userPass1 = $("userPass1");
			var mess = $("message");
			mess.innerHTML="";
			if(userName.value=="") {
				mess.innerHTML="用户名不能为空";
				return false;
			}
			if (userPass.value=="") {
				mess.innerHTML="密码不能为空";
				return false;
			}
			if (userPass1.value=="") {
				mess.innerHTML="确认密码不能为空";
				return false;
			}
			if(userPass.value != userPass1.value){
				mess.innerHTML="两次密码不相同";
				return false;
			}
			return true;
		}
    	function user(){
    		var userName = $("userName");
    	}
    </script>
</head>
<body>
<%
//设置获取request字符串编码格式
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>


<form method="post" action="regist" name="form1" onsubmit="return checkAll()">
    <p class="login">欢迎注册</p>
    用户：<input type="text" name="name" id="userN	ame" placeholder="请输入账号"><br/>
    密码：<input type="passWord" name="password" id="password" placeholder="请输入密码"><br/>
    密码：<input type="passWord" name="userPass1" id="password2" placeholder="请再次输入密码"><br/>
    性别：<select name="sex">
			<option value="1">男
			<option value="2">女
		</select><br/>
    <input type="submit"value="注册">
    <div id="message" style="color:red;text-algn:center;"></div>
</form>
</body>
</html>