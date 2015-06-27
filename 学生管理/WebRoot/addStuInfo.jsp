<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>输入学生信息界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script type="text/javascript">
    function validate()
    {
    var id = document.forms[0].id.value;
    var name = document.forms[0].name.value;
    var age = document.forms[0].age.value;
    var major = document.forms[0].major.value;
    if(id <= 0){
    	alert("学号不能为空，请输入学号！");
    	return false;
    }
    else if(name.length <= 0){
    	alert("姓名不能为空，请输入姓名！");
    	return false;
    }
    else if(age <= 0){
    	alert("请输入合法年龄！");
    	return false;
    }

        else if(major.length <= 0){
    	alert("专业不能为空，请输入所学专业！");
    	return false;
    }
    else{
    	return true;
    }
    	//document.getElementById("form").submit();
    }
    </script>
  </head>
  
  <body background="pic/background.jpg">
  <br>
  <center> <br>
  <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加学生信息</h2><hr>
 <form action="insert.jsp" method="post" id="form" onSubmit="return validate()" >
<h4>  学号：<input type="text" name="id" class="{required:true}"></input><br></h4>
<h4>  姓名：<input type="text" name="name"></input><br></h4>
<h4>  年龄：<input type="text" name="age"></input><br></h4>
<h4>  性别：<input type="radio" name="gender" value="男">男
       <input type="radio" name="gender" value="女">女<br></h4>
<h4>  专业：<input type="text" name="major"></input><br></h4>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="submit" value="提交"/>
  </form> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="showInfo.jsp">查询所有学生信息</a> <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="exit.jsp">退出登录</a>
  </center>
  </body>
</html>

