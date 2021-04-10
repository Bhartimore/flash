<%@page import="modal.*" %>
<%@page import="dao.*" %>
<% 
   String foodName=request.getParameter("foodName"); 
   Menu e=new Menu();
   e.setFoodName(foodName);
   MenuDao menuDao=new MenuDao();
   Integer i=menuDao.deleteRecord(e);
   if(i>0)
   {
	 response.sendRedirect("msg4.jsp") ;
   }
   else
   {
	 response.sendRedirect("error4.jsp") ; 
   }
  
%>