<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>
<body style="background:url('pic/background.jpg') no-repeat;">

	<br/>
	<br/><br/><br/><br/><br/><br/><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
	<h2 style="color:black"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;欢迎来到学生信息管理系统！！</h2>

	<br/><form action="validate.jsp" name="login">
	用户    <input type="text" name="username"><br/><br/>
	密码    <input type="password" name="password"><br/><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input style="background-color:#09C7F7" type="submit" value="Login">
	</form>
	

</body>
</html>
