<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Online Food Panel</title>
<link href="Images/s3.jpg" rel="shortcut icon">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
<!-----------------Header Section----------------------->
<div class="head">
	<div class="logo">
    	<h1>Food Panel</h1>
    </div>
    <div class="link_top">
    	<ul>
        	<li><a href="login.jsp">Login</a></li>
            <li><a href="signUp.jsp">Register</a></li>
        </ul>
    </div>
    <div class="clr"></div>

</div>
<!-----------------Header Section----------------------->
<!-----------------Nav Section----------------------->
<div class="nav">
	<ul>
        	<li><a href="index.jsp">HOME</a></li>
            <li><a href="cart.jsp">CART</a></li>
            <li><a href="about.jsp">ABOUT US</a></li>
        </ul>
</div>
<!-----------------Nav Section----------------------->
<!-----------------Banner Section----------------------->
<div class="banner">
	<img src="Images/bg1.jpg" width="100%" height="350px" alt="banner">
</div>

<!-----------------Banner Section----------------------->
<!-----------------Mid Section----------------------->
<style type="text/css">


table {
    width:50%;
}

table, th, td{
 border: 1px solid black;
 border-collapse: collapse;
}

th,td{
padding: 15px;
text-align:left;

#t01 th{
background-color: black;
color: white;
}


</style>

</head>
<body>
<%@page import="modal.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<%
 ItemDao itemDao=new ItemDao();
 List<Item>l=itemDao.findAllRecord();
 if(l!=null)
 {
	 Iterator<Item> itr=l.iterator();
	 out.println("<table width='50%' align='center' border='2'>");
	 out.println("<tr>");
	 out.println("<th>Id</th><th>Food Name</th><th>Price</th><th><order></th>");
	 out.println("</tr>");
	 while(itr.hasNext())
	 {
	     Item e=itr.next();
%>
	     <tr>
         <td><%=e.getId()%></td>
         <td><%=e.getFoodName()%></td>
         <td><%=e.getFoodPrice()%></td>
   
          <td><form method="POST" action="msg.jsp"><input type="submit" value="ORDER" name="button"/></td></form>
     	
     </tr>
     <% 
	 }
	 out.println("</table>");
 }
 
%>
<div class="mid">
	<div class="mid-left">
    <h2>Welcome To Nidhi Food Point For All Customers. </h2>
    <p>We at The Masala Story strive to add more masala & fun to your lives. Now, get a Dal. Makhani free above orders of INR 1200/ Order Now. 25% off on Party Packs. Flat 20% Off on all Order. FLAT 25% Off on 1st Order. Order Online. Amenities: Zero Contact Delivery, Fresh & Hygienic, Get Cashback.</p>
    
    </div>
    <div class="mid-right">
    <img src="Images/pic4.jpg" width="100%" alt="aside">
    <hr>
    <marquee>Welcome To Food Point  For All Customers. </marquee>
    <hr>
    </div>


</div>


<div>

<!-----------------Mid Section----------------------->
<!-----------------Footer Section----------------------->
<div class="footer">
	<h4>Copyright &copy; Nidhi Food 2020</h4>
</div>


<!-----------------Footer Section----------------------->