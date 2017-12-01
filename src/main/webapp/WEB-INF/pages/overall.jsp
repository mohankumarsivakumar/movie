<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String email=(String)session.getAttribute("email");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
int row=(int)session.getAttribute("rowvalue");
int j;
for(j=1;j<=row;j++){
	String key=Integer.toString(j);
	String val=request.getParameter(key);
	
   int currvalue=Integer.parseInt(val);
   if(currvalue!=0)
   { 
      ResultSet r=st.executeQuery("select overallrating,ratedusers from movie where id='"+j+"'");
	  if(r.next())
	  {	 
		  String rate=r.getString(1);
		  String ratedusers=r.getString(2);
		  float overall=Float.parseFloat(rate);
		  int ratedusrs=Integer.parseInt(ratedusers);
		  double newrat=(double)((overall)*ratedusrs+currvalue)/(double)(ratedusrs+1);
		  ratedusrs++;
		  newrat=Math.round(newrat*100.0)/100.0;
		  st.executeUpdate("UPDATE movie SET overallrating='"+newrat+"' WHERE id='"+j+"'");
		  st.executeUpdate("UPDATE movie SET ratedusers='"+ratedusrs+"' WHERE id='"+j+"'");
		  if(ratedusrs==1)
		  {
			     
				  st.executeUpdate("insert into user_has_movie values('"+email+"','"+j+"','"+val+"')"); 
		  }
		  else
		  {
			  	  st.executeUpdate("update user_has_movie set rating='"+val+"' where user_email='"+email+"'&&movie_id='"+j+"'"); 
		  }
		      
	  }
	  
   }
}
%>

<html lang="en">
  <head>
	<spring:url value="/resources/css/main.css" var="mainCss" />
	<link href="${mainCss}" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>logout page</title>
 </head>
 
 <body >
 <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
 <p style="padding-top:220px;padding-left:600px">your response has been recorded</p></br>
  <form align="center" name="logout" method="get" action="/movie/logout" class="form2">
  
  <input type="submit" name="b1" value="logout" style="padding-top:-20px" class="sub2"/>
  </form> 
 </body>
</html>
