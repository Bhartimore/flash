<%@page import="modal.*" %>
<%@page import="dao.*" %>
<% 
   String foodName=request.getParameter("foodName"); 
   Item e=new Item();
   e.setFoodName(foodName);
   ItemDao itemDao=new ItemDao();
   Boolean b=itemDao.findRecord(e);
   if(b==true)
   {
	   application.setAttribute("id",e.getId());
	   application.setAttribute("foodName",e.getFoodName());
	   application.setAttribute("foodPrice",e.getFoodPrice());
	   response.sendRedirect("msg5.jsp");
   }
   else if(b==false)
   {
	   response.sendRedirect("error5.jsp"); 
   }
   
%>