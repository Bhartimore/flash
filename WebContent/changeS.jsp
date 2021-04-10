<%@page import="modal.*" %>
<%@page import="dao.*" %>
<% 
   String userName=request.getParameter("userName"); 
   String userPassword=request.getParameter("userPassword");
   String userPassword1=request.getParameter("userPassword1");
   Login e=new Login();
   e.setUserName(userName);
   e.setUserPassword(userPassword);
   LoginDao itemDao=new LoginDao();
  if(userPassword.equals(userPassword1))
  {
   Integer i=itemDao.update(e);
   if(i>0)
   {
	 response.sendRedirect("msg8.jsp") ;
   }
   else
   {
	   response.sendRedirect("error3.jsp") ;  
   }
  }
  else
	  response.sendRedirect("error3.jsp") ; 
  
%>