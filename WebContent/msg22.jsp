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
	background-color: pink;
}


.form-conatiner{
		width:50%;
		background: rgba(0,0,0,.7);
		margin:10% auto;
		height:350px;
		text-align:center;
	}
	
	.heading{
	    color:black;
		padding:0.5% 0%;
		margin:0;
		text-align:center;
	}
	.form-inner{
		display:flex;
		flex-direction:column;
		justify-content:space-evenly;
		align-items: center;
		height:28%;
	}
	
	input::placeholder{
	text-indent:12px;
	}
	input[type="submit"]{
	    padding-top: 2px;
	    padding-bottom: 3px;
		width:50%;
		height:30%;
		border-radius:30px;
		background:#f6d887;
		font-size:16px;
		font-weight:700;
		outline:none;
		border:none;
	}


</style>
</head>
<body>
<div class="heading">
<h1>YOUR ITEM HAS BEEN ADDED TO CART</h1>
</div>

<div class="form-conatiner">

 <form method="POST" action="menu.jsp" class="form-inner">
<input type="submit" value="ADD MORE ITEMS TO CART" name="button"><br><br>
</form>
<form method="POST" action="cart.jsp" class="form-inner">
<input type="submit" value="GO TO CART" name="button"><br><br>
</form>
</form>
<form method="POST" action="deletec.jsp" class="form-inner">
<input type="submit" value="DELETE ITEMS FROM CART" name="button"><br><br>
</form>
</form>
<form method="POST" action="find.jsp" class="form-inner">
<input type="submit" value="SERACH ITEM" name="button"><br><br>
</form>
</div>
</body>
</html>