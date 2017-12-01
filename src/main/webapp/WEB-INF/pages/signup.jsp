<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
  <head>
  <!--javascript and AJAX is being used here -->
	<link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
   	<title>SIGNUP PAGE</title>
   	<script>
   	function validate()
   	{
   		var mobile=document.getElementById("t3").value.length;
   		var pwd=document.getElementById("t4").value.length;
   		var pwrd=document.getElementById("t4").value;
   		var pattern=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}$/;
   		if(mobile<10)
   		{
   			document.getElementById("p2").innerHTML="enter 10 digit phone number";
   			return false;
   		}
   		if(pwd<8)
   		{
   			document.getElementById("p3").innerHTML="enter 8 letter password";
   			return false;
   		}
   		if(!pwrd.match(pattern))
   		{
   			document.getElementById("p3").innerHTML="length >7 with atleast one number,uppercase,lowercase";
   			return false;
   		}	
   	}
   	function valid()
   	{
   		var xmlhttp;
   		var email=document.getElementById("t2");
   		if(email.value!="")
   			{
   			if(window.XMLHttpRequest)
   				{
   				xmlhttp=new XMLHttpRequest();
   				}
   			else
   				{
   				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
   				}
   			xmlhttp.onreadystatechange=function()
   			{
   				if(xmlhttp.readyState==4 && xmlhttp.status==200)
   					{
   					document.getElementById("p1").innerHTML=xmlhttp.responseText;
   					}
   			};
   			xmlhttp.open("GET","/movie/valid?t2="+encodeURIComponent(t2.value),true);
   			xmlhttp.send();
   			}
   	}
   	</script>
  </head>
  <body >
	  <h1 align="center">MOVIE RATING APPLICATION</h1>
      <h3 align="center">SIGNUP PAGE</h3>  
	  <form align="center" name="signup" method="get" action="/movie/create" class="sign1" onsubmit='return validate()'>
		<table>
			<tr><td><label>User Name:</label></td>
				<td><input type="text" id="t1" name="t1" required autofocus="autofocus" placeholder='enter user name'/></td>
				</tr>
			<tr><td><label>email:</label></td>
				<td><input type="email" id="t2" name="t2"required placeholder='unique email id' onblur='valid()'/></br></td>
				<td><span id='p1'></span></td></tr>
			<tr><td><label>mobile:</label></td>
				<td><input type="mobile" id="t3" name="t3"required placeholder='10 digits required'/></br></td>
				<td><p id='p2'></p></td></tr>
			<tr><td><label>password:</label></td>
				<td><input type="password" id="t4" name="t4"required placeholder='length greater than 7'/></br></td>
				<td><p id='p3'></p></td></tr></table>
		<input type="submit" name="b1" value="create" class="sub3"  />
	  </form>

    </body>
</html>