<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body{
	margin:0;
	padding:0;
	background-repeat: no-repeat;
	background-size: cover;
	background-image:url('images/login.jpg');
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
		height:500px;
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
		height:80%;
	}
	.form-inner input[type="text"]{
		width:62%;
		height:45px;
		border:none;
		height:35px;
		outline:none;
		text-indent:12px;
	}
	input::placeholder{
	text-indent:12px;
	}
	input[type="submit"]{
		width:42%;
		height:15%;
		border-radius:30px;
		background:#f6d887;
		font-size:16px;
		font-weight:700;
		outline:none;
		border:none;
	}
	.sign-up{
		width:50%;
		height:12%;
		border-radius:30px;
		outline:none;
		border:none;
		background:#f6d887;
	}
	.sign-up>a{
		font-size:16px;
		font-weight:700;
		text-decoration:none;
		color:#000;
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
		<li><a href="index.jsp">HOME</a></li>
		<li><a href="menu.jsp">MENU</a></li>
		<li><a href="about.jsp">ABOUT US</a></li>
		<li><a href="cart.jsp">CART</a></li>
	</ul>
</div>

<div class="form-conatiner">
	<h1>Sign Up</h1>
	<form method="POST" action="sign.jsp" class="form-inner">
<input type="text" name="userName" placeholder="Enter the UserName">
<input type="text" name="userPassword" placeholder="Enter the Password">
<input type="text" name="userId" placeholder="Enter the UserId">
<input type="text" name="userEmail" placeholder="Enter the Email Id">
<input type="text" name="userNumber" placeholder="Enter the Mobile Number">
<input type="text" name="userAddress" placeholder="Enter the Address">
<input type="submit" value="Enter the details">
	</form>
</div>
</body>
</html>