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
    
    <title>删除页面</title>
    
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
  <body background="pic/background.jpg"> 
  	<h2><a style="text-decoration:none; margin-left:81%" href=exit.jsp>退出登录</a></h2>
     <% 
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
    stat.executeUpdate("delete from student where id = " + id + ""); 
    rs = stat.executeQuery("select * from student");
    
    if(rs.next())
    {
     out.print("<center><br><br><br><br><h3>删除成功！！</h3></center>");
    }
    else{
    out.print("<center><br><br><br><br><h3>删除失败！！</h3></center>");
    }
    %>
    <br>
 <br>
     <center> <a href=addStuInfo.jsp>返回添加信息页面</a> &nbsp; <a href=showInfo.jsp>返回信息查询页面</a>&nbsp;
     </center>
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
