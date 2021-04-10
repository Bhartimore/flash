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
	background:#51adcf;
}
	.form-conatiner{
		width:30%;
		background: #8db596;
		margin:10% auto;
		height:350px;
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
		height: 65%;
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
		height: 20%;
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
<div class="form-conatiner">
	<h1>Delete Dish</h1>
	<form action="deleteS.jsp" method="post" class="form-inner">
		<input type="text" name="foodName" placeholder="DishName">
		<input type="submit" value="DELETE DISH"><br>
	</form>
</div>
</body>
</html>