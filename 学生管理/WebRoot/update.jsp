<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生信息</title>
    
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
   <jsp:include page="islogin.jsp"></jsp:include>
  <body background="pic/background.jpg">
 <% 
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    Connection conn = null; 
    Statement stat = null; 
    ResultSet rs = null;
    Class.forName("com.mysql.jdbc.Driver"); 
    String url = "jdbc:mysql://localhost:3306/jsp"; 
    String user = "root"; 
    String password = "root"; 
    conn = DriverManager.getConnection(url,user,password); 
    stat = conn.createStatement(); 
    rs = stat.executeQuery("select * from student where id=" + id + "");
  %>

    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生信息<a style="text-decoration:none; margin-left:75%" href=exit.jsp>退出登录</a></h2>  <hr>    
     
  <h3 style="margin-left:20%">要修改的学生信息如下:</h3>
   <table width="450" border="100" cellSpacing=1 style="margin-left:30%; border:dashed 1pt">
    <tr>
    <td>学号</td>
    <td>姓名</td>
    <td>年龄</td>
    <td>性别</td>
    <td>专业</td>
    </tr>
    <% 
    while(rs.next())
    {
    out.print("<tr>");
    out.print("<td>" + rs.getInt("id") + "</td>");
    out.print("<td>" + rs.getString("name") + "</td>");
    out.print("<td>" + rs.getInt("age") + "</td>");
    out.print("<td>" + rs.getString("gender") + "</td>");
    out.print("<td>" + rs.getString("major") + "</td>");
    out.print("</tr>");
  
  
    %>
      </table>
      
      <br>
         <br>
 <h3 style="margin-left:20%">将学生信息更改为:</h3>
 <form action="updateShow.jsp" method="post" onSubmit="return validate()">
<h4 style="margin-left:20%"> 学号：<input type="text" name="id" value="<%=rs.getInt("id") %>" title="学号不能改变" readonly="readonly"></input><br></h4>
<h4 style="margin-left:20%">  姓名：<input type="text" name="name" title="姓名不能为空" onclick="return checkName(name)"></input><br></h4>
<h4 style="margin-left:20%">  年龄：<input type="text" name="age" title="年龄不能为空"></input><br></h4>
<h4 style="margin-left:20%">  性别：<input type="radio" name="gender" value="男">男
       <input type="radio" name="gender" value="女">女<br></h4>
<h4 style="margin-left:20%">  专业：<input type="text" name="major" title="专业不能为空"></input><br></h4>
 <input type="submit" style="margin-left:27%" value="修改"/>
  </form>

<h3 style="margin-left:20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=addStuInfo.jsp>返回添加信息页面</a></h3>
<h3 style="margin-left:20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=showInfo.jsp>返回信息查询页面</a></h3>
<%
  }
 %>
      <% 
    if(rs != null)
    {
        rs.close();
        rs = null;
    }
        if(stat != null)
    {
        stat.close();
        stat = null;
    }
        if(conn != null)
    {
        conn.close();
        conn = null;
    }
    %> 
   
  </body>
</html>
