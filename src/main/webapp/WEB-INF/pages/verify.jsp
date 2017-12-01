<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
//session is used here
String useremail=request.getParameter("t1");
String pwd=request.getParameter("t2");
session.setAttribute("email",useremail);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select password from user where email='"+useremail+"'");
if(rs.next())
{
	if(rs.getString(1).equals(pwd))
	{
		response.sendRedirect("/movie/rate");
	}

}

%>

<!DOCTYPE html>
<html>
<body>
<link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
<p style="padding-top:220px;padding-left:600px">wrong Email id or password</p></br>

<form align="center" name="index" method="GET" action="/movie/index" class="form2" >
		<input type="submit" name="b1"  value="try again" style="padding-top:-20px" class="sub2"/>
	</form>
</body>
</html>
