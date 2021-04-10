<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background:#4e89ae;
margin:0;
padding:0;
}
.Nabbar-container{
		width:100%;
		background:rgba(0,0,0,1);
		
	}
	.Nabbar-container>ul{
		list-style:none;
		display:flex;
		justify-content: flex-end;
		padding: 10px 20px;
		margin:0;
	}
	.Nabbar-container>ul>li{
		padding:10px;
			
	}
	.Nabbar-container>ul>li>a{
		padding:10px;
		text-decoration:none;
		color:#ffff;
			
	}
	i{
	font-size:20px;
	}
.main-section{
 display:flex;
}
h1{
text-align:center;
color:#ffff;
}
.admin-conatiner{
width:19%;
min-height:500px;
margin-top:40px;
display:flex;
justify-content: space-around;
align-items: center;
flex-direction: column;
cursor:pointer;
}
.main-btns{
	position: relative;
	width: 70%;
	height:80px;
	padding:1% 0%;
	border-radius: 20px;
	background:#ffff;
	text-decoration:none;
	color:#000;
}
.main-btns>img{
position: absolute;
    top: -13%;
    left: 89%;
    width: 18%;
}
.admin-btn{
	height:80px;
	display:flex;
	justify-content:space-between;
	flex-direction:column;
	align-items: center;
}
.admin-btn img{
width:30%;
}
.fr{
width:80%;
min-height:530px;
height:500px;
 border:1px solid;
 background: white;
 box-sizing: border-box;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: center;    
}
table{
width:50%;
margin-top: 13%;
}
</style>
</head>
<body>
<div class="Nabbar-container">
	<ul>
		<li><a href="index.jsp">HOME</a></li>
		<li><a href="menu.jsp">MENU</a></li>
		<li><a href="cart.jsp">CART</a></li>
		<li><a href="change.jsp">CHANGE PASSWORD</a></li>
	</ul>
</div>
<h1>Welcome To Admin Dashboard</h1>
<div class="main-section">
	<div  class="admin-conatiner">
<a href="?page1=add" class="main-btns">
		<img src="Images/link.png">
			<div class="admin-btn">
				<img src="Images/food1.png">
				ADD FOOD
			</div>
	</a>
	<a href="?page1=update" class="main-btns"">
		<img src="Images/loop.png">
			<div class="admin-btn">
				<img src="Images/food1.png">
				UPDATE MENU
			</div>
	</a>
	<a href="?page1=delete" class="main-btns"">
		<img src="Images/trash-bin.png">
			<div class="admin-btn">
				<img src="Images/food1.png">
				DELETE FOOD
			</div>
	</a>
	<a href="?page1=find" class="main-btns"">
		<img src="Images/search.png">
			<div class="admin-btn">
				<img src="Images/food1.png">
				SEARCH FOOD
			</div>
	</a>
	<a href="?page1=findAll" class="main-btns"">
		<img src="Images/research.png">
			<div class="admin-btn">
				<img src="Images/food1.png">
				FIND MENU
			</div>
	</a>
</div>
<div class="fr">
<%
	String page1=request.getParameter("page1");
	if(page1!=null)
	{
%>
	<jsp:include page='<%=page1 + ".jsp" %>'></jsp:include>
<% 		
	}
%>
</div>
</div>
</body>
</html>