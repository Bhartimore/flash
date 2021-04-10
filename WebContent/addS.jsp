<%@page import="modal.*" %>
<%@page import="dao.*" %>
<% 
   Integer id=Integer.parseInt(request.getParameter("id")); 
   String foodName=request.getParameter("foodName");
   Integer foodPrice=Integer.parseInt(request.getParameter("foodPrice"));
   Item e=new Item();
   e.setId(id);
   e.setFoodName(foodName);
   e.setFoodPrice(foodPrice);
   ItemDao itemDao=new ItemDao();
   Integer i=itemDao.addRecord(e);
   if(i>0)
   {
	 response.sendRedirect("msg2.jsp") ;
   }
   else
   {
	   response.sendRedirect("error2.jsp") ;  
   }
   
  
%>