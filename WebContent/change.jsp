<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password </title>
<style type="text/css">

body{
	margin:0;
	padding:0;
	background-repeat: no-repeat;
	background-size: cover;
	background-image:url('Images/pic1.jpg');
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
	.form-conatiner{
		width:30%;
		background: rgba(0,0,0,.7);
		margin:10% auto;
		height:330px;
		text-align:center;
	}
	.form-conatiner h1{
		color:#ffff;
		padding:4% 0%;
		margin:0;
	}
	.form-inner{
		display:flex;
		flex-direction:column;
		justify-content:space-evenly;
		align-items: center;
		height:60%;
	}
	.form-inner input[type="text"]{
		width:60%;
		height:35px;
		border:none;
		height:35px;
		outline:none;
		text-indent:12px;
	}
	input::placeholder{
	text-indent:12px;
	}
	input[type="submit"]{
		width:50%;
		height:24%;
		border-radius:30px;
		background:#f6d887;
		font-size:16px;
		font-weight:700;
		outline:none;
		border:none;
	}
	}
	p{
	margin:0;
	padding:0;
	color:#ffff;
	margin-bottom: 3%;
	}
</style>
</head>
<body>
<div class="Nabbar-container">
	<ul>
		<li><a href="spl.jsp">BACK</a></li><li>
		<a href="index.jsp">HOME</a></li>
		<li><a href="menu.jsp">MENU</a></li>
		<li><a href="buy.jsp">BUY</a></li>
		<li><a href="cart.jsp">CART</a></li>
	</ul>
</div>
<div class="form-conatiner">
	<h1>Change Password</h1>
	<form action="changeS.jsp" method="post" class="form-inner">
		<input type="text" name="userName" placeholder="Enter a UserName">
		<input type="text" name="userPassword" placeholder="Enter a UserPassword">
		<input type="text" name="userPassword1" placeholder="Confirm UserPassword">
		<input type="submit" value="Change Password">
	</form>
</div>
</body>
</html>