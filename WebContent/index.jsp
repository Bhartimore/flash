<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
	body{
	position:relative;
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
	.banner-image{
		height:300px;              
	}
	.banner-image img{
		width:100%;
		height:700px;
	}
	.text-overlay p{
		position: absolute;
  		top: 100%;
  		left: 50%;
		color:#ffff;
		font-weight:700;
		font-size:2.5rem;
		transform: translate(-50%, -50%);
	}
</style>
</head>
<body>
<div class="Nabbar-container">
	<ul>
		<li><a href="menu.jsp">MENU</a></li>
		<li><a href="about.jsp">ABOUT US</a></li>
		<li><a href="login.jsp">LOGIN</a></li>
		<li><a href="cart.jsp">CART</a></li>
	</ul>
</div>
<div class="banner-image">
	<img src="Images/bg3.jpg" alt="bg"/>
	<div class="text-overlay">
		<p>Welcome To Food@home</p>
	</div>
</div>
</body>
</html>