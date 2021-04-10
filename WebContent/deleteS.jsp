<%@page import="modal.*" %>
<%@page import="dao.*" %>
<% 
   String foodName=request.getParameter("foodName"); 
   Item e=new Item();
   e.setFoodName(foodName);
   ItemDao itemDao=new ItemDao();
   Integer i=itemDao.deleteRecord(e);
   if(i>0)
   {
	 response.sendRedirect("msg4.jsp") ;
   }
   else
   {
	 response.sendRedirect("error4.jsp") ; 
   }
  
%>