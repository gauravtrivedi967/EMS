<%@ page language="java" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Delete Employ</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #2A5FFF;
}
-->
</style>
</head>
<body >
<%
ResultSet rs;
%>
<form  action="LoginSer"  method="GET">
<%
try{
rs=(ResultSet)request.getAttribute("DE");
while(rs.next()){%>
<img src="images\hrms.png" width="100%" height="124">
<h2 align="center" class="style1"> Delete Employee Record </h2>
<p align="center"><strong>Employee ID: <input type= "text" name = "emp"readonly="readonly" value="<%out.println(rs.getString("Emp_Id"));%>"/>
</strong>
<p align="center">First Name :&nbsp;&nbsp;<input type= "text" name = "fname" size = "20"readonly="readonly" value="<%out.println(rs.getString("fname"));%>">
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
Last Name : <input type= "text" name = "lname" size = "20"readonly="readonly" value="<%out.println(rs.getString("lname"));%>"> 
<p align="center">Department :<input type= "text" name = "dept" size = "20"readonly="readonly" value="<%out.println(rs.getString("dept"));%>">
<p align="center">City  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "city" readonly="readonly" value="<%out.println(rs.getString("city"));%>"/>
</p>
<p align="center">Mobile No. : 
  <input type= "text" name = "mob"readonly="readonly" value="<%out.println(rs.getString("mob"));%>"/></p>
<p align="center">Salary :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "salary" readonly="readonly"value="<%out.println(rs.getString("salary"));%>"/>
  <br>
  <br>
<input type="hidden" name="page" value="Deleted">  
<input type="submit" value="Delete">
<%} %>
	</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>