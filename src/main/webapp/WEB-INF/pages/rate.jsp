<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page session="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
	<head>
	<!-- bootstrap and session are being used here -->
	  <title>RATING PAGE</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
	</head>
    <body>
      <h1 align="center">MOVIE RATING APPLICATION</h1>
      <h3 align="center">RATING PAGE</h3>  
      hello,<% String email=(String)session.getAttribute("email"); 
	  out.println("<html><body><h4>"+email+"</h4></body></html>");
	  Class.forName("com.mysql.jdbc.Driver");
	  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	  Statement st=con.createStatement();
	  ResultSet rs=st.executeQuery("select * from movie ");
	  out.println("<html><body><form name='rating' method='GET' action='/movie/overall'><table border='1' style='border: 10px solid blue;'align=center>");
	  int i=0;
	  out.println("<tr><th>POSTER</th><th>FILM ID</th><th>TITLE</th><th>HERO</th><th>HEROINE</th><th>DIRECTOR</th><th>RUN LENGTH</th><th>GENRE</th><th>DESCRIPTION</th><th>OVERALL RATING</th><th>YOUR RATING</th>");
	  while(rs.next())
	  {i++;
		out.println("<tr>");
		Statement t=con.createStatement();
		  ResultSet r=t.executeQuery("select overallrating from movie where id='"+i+"'");
		  if(r.next())
		  {	  	out.println("<td><img src=resources/images/"+i+".JPG height=100px width=100px /></td>"+"<td><p>"+rs.getString(1)+
	  			"</p><p></td>"+"<td><p>"+rs.getString(2)+"</p><p></td>"+"<td><p>"+rs.getString(3)+"</p><p></td>"+"<td><p>"+
	  			rs.getString(4)+"</p><p></td>"+"<td><p>"+rs.getString(5)+"</p><p></td>"+"<td><p>"+rs.getString(6)+"</p><p></td>"+
	  			"<td><p>"+rs.getString(7)+"</p><p></td>"+"<td><p>"+rs.getString(8)+"</p><p></td>"+"<td><p>"+r.getString(1)+
	  			"</p><p></td><td><select name="+i+">"+"<option value=0 selected>select</option><option value=1>one</option><option value=2>two</option><option value=3>three</option><option value=4>four</option><option value=5>five</option></select>");  	
		  }out.println("</tr>");
	    
	  }
	  out.println("</table></br></br><input type=submit name=b1 value=save  class=sub4 /></form></body></html>");
	  session.setAttribute("rowvalue",i);
	  %> 
