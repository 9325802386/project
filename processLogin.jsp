<%@page import="dao.LoginDao"%>
<%@page import="pojo.LoginInfo"%>
<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");

if(LoginDao.isUserValid(new LoginInfo(userName,password)))
{
	session.setAttribute("userName",userName);
	session.setMaxInactiveInterval(200); 
	response.sendRedirect("home.jsp"); 
}
else 
{
	response.sendRedirect("loginFailed.jsp"); 
}
%>
