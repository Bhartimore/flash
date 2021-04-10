<%@page import="modal.*" %>
<%@page import="dao.*" %>
<%
   String userName=request.getParameter("userName");
   String userPassword=request.getParameter("userPassword");
   String userRole=request.getParameter("userRole");
   
   Login login=new Login();
   login.setUserName(userName);
   login.setUserPassword(userPassword);
   login.setUserRole(userRole);
   
   LoginDao loginDao=new LoginDao();
   Boolean b=loginDao.validate(login);
   if((b==true)&&(userRole.equals("admin")))
   {
	   application.setAttribute("userName",login.getUserName());
	   response.sendRedirect("spl.jsp");
   }
   if((b==true)&&(userRole.equals("customer")))
   {
	   application.setAttribute("userName",login.getUserName());
	   response.sendRedirect("welcome1.jsp");
   }
   else if(b==false)
   {
	   response.sendRedirect("error1.jsp");
   }
%>