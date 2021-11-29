<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style>

.container{
    margin:5px;
      padding:5px;
      height:500px;
      display:flex;
      align-items: center;
      justify-content: center;
      margin-top:50px;
}
.login-container{
   height:400px;
   width:400px;
   padding:5px;
   border-radius: 10px;
    display:flex;
      align-items: center;
      justify-content: center;
      background-color:pink;
}
.text-container{
 
   padding:5px;
   width:400px;
}

.submit-container{
    display:flex;
      align-items: center;
      justify-content: center;
}
.os-m{
  margin:8px;
}
.inner-container{
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top:40px;
}
.align-center{
  display: flex;
  align-items: center;
  justify-content: center;
}
.text-box-design{
  border:none;
  padding:10px;
  border-radius:2px;
}
.success-btn{
  background-color:green;
  color:white;
  border-radius: 3px;
  width:100px;
  height:30px;
}
.text-inner-container{
  margin:0 20% 0 20%;
  padding:5px;
}
</style>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
 
	    <div class="login-container">
	     <form action=""  method="post" id="loginForm" name="loginForm">
	      <div class="text-container">
	       <div class="os-m submit-container">
	            <label class="os-m" style="font-size:30px; font-weight:bold; color:black">User Login</label><br/>
	       </div>
	        <div class="text-inner-container">
		      	<label class="os-m">Email</label><br/>
		        <input type="email" onblur="emailCheck()" id="email" class="os-m text-box-design" style="width:200px;" name="email" placeholder="Enter your email"required><br/>
		        <label id="emailError" style="font-size:10px; color:red;"></label><br/>
		           
		        <label class="os-m">Password</label><br/>
		        <input type="password" onblur="passwordCheck()" class="os-m text-box-design" style="width:200px;" name="password" placeholder="Enter Password" required><br/>
		        <label id="passwordError" style="font-size:10px; color:red;"></label><br/>
	       </div>
       
        <div class="submit-container">
        	<button id="register" class="success-btn os-m" name="register">LOGIN</button><br/><br/>
        </div>
        <div class="os-m submit-container">
         <a href="registerPage.jsp">SignUp or create new account</a><br/>
       </div>
      <div class="os-m submit-container">
         <a href="index.jsp">Return to Home</a>
      </div>
      </div>
	</form>
  </div>
</div>
</body>
<script>
function emailCheck(){
	var email = document.getElementById("email").value;
	var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	const found = email.match(regex);
	
	if(found==null){
		document.getElementById("emailError").style.display="inline";
		document.getElementById("emailError").innerHTML="Invalid email address";
	}
	else{
		document.getElementById("emailError").style.display="none";
	}
}
</script>
</html>