
<% request.getSession().invalidate();
//session is terminated
response.sendRedirect("/movie/index");
%>
