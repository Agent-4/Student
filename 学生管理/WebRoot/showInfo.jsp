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

  </head>
  
  <body background="pic/background.jpg">
 <% 
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String major = request.getParameter("major");
    Connection conn = null; 
    Statement stat = null; 
    ResultSet rs = null;
    Class.forName("com.mysql.jdbc.Driver"); 
    String url = "jdbc:mysql://localhost:3306/jsp"; 
    String user = "root"; 
    String password = "root"; 
    conn = DriverManager.getConnection(url,user,password); 
    stat = conn.createStatement(); 
    rs = stat.executeQuery("select * from student");
  %>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学生信息<a style="text-decoration:none; margin-left:75%" href=exit.jsp>退出登录</a></h2>   
    <marquee style="color:#8800AA">欢迎进入学生管理系统————梦想是一定要有的,万一实现了呢！！！！</marquee><hr>  
  <h3 style="margin-left:20%">全部学生信息如下:</h3>
   <table width="450" border="100" cellSpacing=3 style="margin-left:30%;border:dashed 1pt">
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
    %>
    <td ><a href="delete.jsp?id=<%=rs.getInt("id") %>"style="text-decoration:none; color:red">删除</a></td>
    <td><a href="update.jsp?id=<%=rs.getInt("id") %>"style="text-decoration:none; color:#0000FF">修改</a></td>
    <%
    out.print("</tr>");
    }
  
    %>
    <table><br><a href="addStuInfo.jsp" style="margin-left:20% ;text-decoration:none; color:#0A8F0A"><big>点击进入添加学生信息页面</big></a></table>
      </table>
      <br>
   	<form action="select_for_id.jsp" method="post">
   
 	<h3 style="margin-left:20%">按学号查询:<input type="text" name="id"  value="" title="学号不能为空" ></input>
    <input type="submit" value="查询"/></h3>
    <br>
    </form>
    
    <form action="select_for_name.jsp" method="post">
   	<h3 style="margin-left:20%">按姓名查询:<input type="text" name="name" value="" title="姓名不能为空"></input>
    <input type="submit" value="查询" /></h3>
    <br>
    </form>
    
    <form action="select_for_age.jsp" method="post">
  	<h3 style="margin-left:20%"> 按年龄查询:<input type="text" name="age" value="" title="年龄不能为空"></input>
    <input type="submit" value="查询"/></h3>
    <br>
    </form>
    
    <form action="select_for_gender.jsp" method="post">
  	<h3 style="margin-left:20%">  按性别查询:<input type="text" name="gender" value="" title="性别不能为空"></input>
    <input type="submit" value="查询"/></h3>
    <br>
    </form>
    
    <form action="select_for_major.jsp" method="post">
   	<h3 style="margin-left:20%"> 按专业查询:<input type="text" name="major" value="" title="专业不能为空"></input>
    <input type="submit" value="查询"/></h3>
    
    </form>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
 
<br>

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
