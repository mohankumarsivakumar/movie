<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String username=request.getParameter("t1");
String email=request.getParameter("t2");
String mobile=request.getParameter("t3");
String pwd=request.getParameter("t4");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
st.executeUpdate("insert into user values('"+username+"','"+email+"','"+mobile+"','"+pwd+"')");
response.sendRedirect("/movie/index");
%>
