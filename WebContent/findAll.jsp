<%@page import="modal.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<%
 ItemDao itemDao=new ItemDao();
 List<Item>l=itemDao.findAllRecord();
 if(l!=null)
 {
	// application.setAttribute("l",l);
	// response.sendRedirect("msg6.jsp");
	 //List l=(List)application.getAttribute("l");
	 Iterator<Item> itr=l.iterator();
	 out.println("<table width='50%' align='center' border='1'>");
	 out.println("<tr>");
	 out.println("<th>Id</th><th>Food Name</th><th>Price</th>");
	 out.println("</tr>");
	 while(itr.hasNext())
	 {
	     Item e=itr.next();
	     out.println("<tr>");
	     out.println("<td>"+e.getId()+"</td>");
	     out.println("<td>"+e.getFoodName()+"</td>");
	     out.println("<td>"+e.getFoodPrice()+"</td>");
	     out.println("</tr>");
	 }
	 out.println("</table>");
 }
 else
 {
	// response.sendRedirect("error6.jsp"); 
	out.println("record not found");
 }
%>