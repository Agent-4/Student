<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Welcome,home</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <jsp:include page="islogin.jsp"></jsp:include>
  <body background="pic/background.jpg"><br/><br/>
  	
  	<center>
  <br><br><br><br><br>
  	<h2>学生信息管理系统</h2><br/>
    <a href="addStuInfo.jsp" style="text-decoration:none;color:#3300FF">--添加学生信息--</a><br/><br/>
    <a href="showInfo.jsp"style="text-decoration:none;color:#3300FF">-查询学生信息-</a><br/><br/>
    <a href="showInfo.jsp"style="text-decoration:none;color:#3300FF">-修改学生信息-</a><br/><br/>
    <a href="showInfo.jsp"style="text-decoration:none;color:#3300FF">--删除学生信息--</a><br/><br/>
    <a href="exit.jsp"style="text-decoration:none;color:#3300FF">--退出--</a><br/><br/>
<br>

</center>
  </body>
</html>
