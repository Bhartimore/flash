<%@page import="modal.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<html>
<center>
<h1>welcome to Mycart</h1>
</center>
<div class="form-conatiner">
<%
 String userName=(String)application.getAttribute("userName");
 out.println("welcome"+" "+userName); 
%>
<br><br>
<%
 MenuDao menuDao=new MenuDao();
 List<Menu>l=menuDao.findAllRecord();
 if(l!=null)
 {
	 //application.setAttribute("l",l);
	 //response.sendRedirect("msg6.jsp");
	 //List l=(List)application.getAttribute("l");
	 Iterator<Menu> itr=l.iterator();
	 out.println("<table width='50%' align='center' border='2'>");
	 out.println("<tr>");
	 out.println("<th>Id</th><th>Food Name</th><th>Quantity</th><th>Price</th><th>Total</th>");
	 out.println("</tr>");
	 while(itr.hasNext())
	 {
	     Menu e=itr.next();
	     out.println("<tr>");
	     out.println("<td>"+e.getId()+"</td>");
	     out.println("<td>"+e.getFoodName()+"</td>");
	     out.println("<td>"+e.getFoodQuantity()+"</td>");
	     out.println("<td>"+e.getFoodPrice()+"</td>");
	     out.println("<td>"+e.getTotal()+"</td>");
	     out.println("</tr>");
	 }
	 out.println("</table>");
 }
 else
 {
	out.println("Cart is empty");
 }
%>
</div>
<center>
<form method="POST" action="payment.jsp"><input type="submit" value="CONFIRM ORDER" name="order"/></form>
</center>

<style type="text/css">
body{
	margin:0;
	padding:0;
	background-repeat: no-repeat;
	background-size: cover;
	background-image:url('Images/bg5.jpg');
}
.form-conatiner{
		width:50%;
		background: white;
		margin:10% auto;
		height:320px;
		text-align:center;
	}
	input[type="submit"]{
		width:17%;
		height:10%;
		border-radius:30px;
		background:#8fcfd1;
		font-size:16px;
		font-weight:700;
		outline:none;
		border:none;
	}
	
</style>
</html>
	