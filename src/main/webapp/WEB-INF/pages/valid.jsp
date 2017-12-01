<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
int count=0;
String email=request.getParameter("t2");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
while(rs.next())
{
	count++;
}
if(count!=0)
{
	out.println("<p style='color:red'>email id is already in use</p>");	
}
else if(count==0)
{
	out.println("<p style='color:blue'>email id is valid</p>");	
}
%>
