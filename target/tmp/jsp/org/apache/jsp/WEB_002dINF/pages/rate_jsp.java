/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.2.11.v20150529
 * Generated at: 2017-12-01 06:10:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class rate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("file:/C:/Users/Sampath/.m2/repository/org/apache/taglibs/taglibs-standard-impl/1.2.1/taglibs-standard-impl-1.2.1.jar", Long.valueOf(1511664551776L));
    _jspx_dependants.put("jar:file:/C:/Users/Sampath/.m2/repository/org/apache/taglibs/taglibs-standard-impl/1.2.1/taglibs-standard-impl-1.2.1.jar!/META-INF/c.tld", Long.valueOf(1384348662000L));
    _jspx_dependants.put("file:/C:/Users/Sampath/.m2/repository/org/springframework/spring-webmvc/4.1.6.RELEASE/spring-webmvc-4.1.6.RELEASE.jar", Long.valueOf(1511663926659L));
    _jspx_dependants.put("jar:file:/C:/Users/Sampath/.m2/repository/org/springframework/spring-webmvc/4.1.6.RELEASE/spring-webmvc-4.1.6.RELEASE.jar!/META-INF/spring.tld", Long.valueOf(1427254024000L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\t<head>\r\n");
      out.write("\t<!-- bootstrap and session are being used here -->\r\n");
      out.write("\t  <title>RATING PAGE</title>\r\n");
      out.write("\t  <meta charset=\"utf-8\">\r\n");
      out.write("\t  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\r\n");
      out.write("\t  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("\t  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n");
      out.write("      <link href=\"resources/css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\t</head>\r\n");
      out.write("    <body>\r\n");
      out.write("      <h1 align=\"center\">MOVIE RATING APPLICATION</h1>\r\n");
      out.write("      <h3 align=\"center\">RATING PAGE</h3>  \r\n");
      out.write("      hello,");
 String email=(String)session.getAttribute("email"); 
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
	  
      out.write(' ');
      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
