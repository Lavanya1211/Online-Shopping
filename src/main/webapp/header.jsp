<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

*{
	margin: 0;
	padding: 0;
}
.nav-search:focus{
	outline:none;
}
.picture{
	cursor: pointer;
	width: 100%;
	
}
a{
	text-decoration: none;
}

.nav-elements{
	margin: 0 20px 0 20px;
	padding: 5px;
}
 .left-nav{
	display:flex;	
}

.right-nav{
	display:flex;	
	margin-left: auto;

}
.nav-area {
	padding: 10px;
	position:sticky;
	top: 0;
	display:flex;
	background-color:lightblue;
	
}
</style>
</head>
<div id="navbar"></div>
<body>
	<div class="nav-area">
		<div class="left-nav">
		<img src="https://t4.ftcdn.net/jpg/03/34/53/51/360_F_334535136_vvbWaKEpsHIMS4dpJUxgXZL6clQX7VGs.jpg" style="width:9%" >
			<div>
				<span class="material-icons">home</span>
			</div>
			<div class="nav-elements">
				<a href="index.jsp">Home</a>
			</div>
			<div>
				<span class="material-icons">local_shipping</span>
			</div>
			<div class="nav-elements">
				<a href="#">Services</a>
			</div>
			<div>
				<span class="material-icons">add_shopping_cart</span>
			</div>
			<div class="nav-elements">
				<a href="#">cart</a>
			</div>
			
			<div class="nav-elements">
				<input type="search" class="nav-search"name="search-bar" placeholder="Search here.." style="width:300px;background:transparent;border:none; border-bottom:1px solid black;padding:2px;"/>
			</div>
			  <i class="material-icons">search</i>	
		</div>
		<div class="right-nav">
			<div>
				<span class="material-icons">login</span>
			</div>
			<div class="nav-elements">
				<a href="loginPage.jsp">Login</a>
			</div>
			<div>
				<span class="material-icons">account_circle</span>

			</div>
			<div class="nav-elements">
				<a href="registerPage.jsp">SignUp</a>
			</div>
		</div>
	</div>
	
	
</body>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</html>