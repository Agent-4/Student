<%@page import="com.jkxy.model.userTable"%>
<%@page import="com.jkxy.service.userservice"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
userTable user=(userTable)session.getAttribute("user");
if(user==null)
{
 %>
 
 <jsp:forward page="index.jsp"></jsp:forward>
 <%} %>
