<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
	<head>
	  <!-- css is being used here -->
	  <title>LOGIN PAGE</title>
	  <meta charset="utf-8">
	  <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
	</head>
    <body>
      <h1 align="center">MOVIE RATING APPLICATION</h1>
      <h3 align="center">LOGIN PAGE</h3>      
	  <form align="center" name="index" method="GET" action="/movie/verify" class="form1">
		<table><tr><td><label>Email id:</label></td>
		<td><input type="email" name="t1" id="t1" required autofocus="autofocus"/></td></tr>
		<tr><td><label>password: </label></td>
		<td><input type="password" name="t2" id="t2" required/></br></td></tr></table>
		<input type="submit" name="b1" value="login" class="sub1" />
	</form>
	<form align="center" name="signup" method="GET" action="/movie/signup" class="form2" >
		<input type="submit" name="b2"  value="signup" style="padding-top:-20px" class="sub2"/>
	</form>
    </body>
</html>
