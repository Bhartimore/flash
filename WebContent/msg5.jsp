<%@page import="modal.*" %>
<%@page import="dao.*" %>
<%@page import="java.sql.*" %>


<%
Integer id=(Integer)application.getAttribute("id");
String foodName=(String)application.getAttribute("foodName");
Integer foodPrice=(Integer)application.getAttribute("foodPrice");
%>
<br><br><br><table width='50%' align='center' border='2'>
<tr>
<th>Id</th>
<th>Food Name</th>
<th>Price</th>
</tr>
<tr>
<td><%=id %></td>
<td><%=foodName %></td>
<td><%=foodPrice %></td>
</tr>
</table>