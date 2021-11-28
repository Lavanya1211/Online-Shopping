<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style>

.container{
    margin:5px;
      padding:5px;
      height:100%;
      display:flex;
      align-items: center;
      justify-content: center;
      margin-top:50px;
}
.login-container{
   height:100%;
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
  margin:0 10% 0 10%;
  padding:5px;
}
</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
   <div class="container">
 
    <div class="login-container">
    <form action="registerPage.jsp"  method="post" id="registrationForm" name="registrationForm" >
      <div class="text-container">
       <div class="os-m submit-container">
            <label class="os-m" style="font-size:30px; font-weight:bold; color:black">New User Registration</label><br/>
       </div>
        <div class="text-inner-container">
        <label class="os-m">Name</label><br/>
           <input type="text" oninput="checkName()" id="name" class="os-m text-box-design" style="width:300px;" name="name" placeholder="Enter your name"required><br/>
           <label id="nameError" style="font-size:10px; color:red;"></label><br/>
      	<label class="os-m">Email</label><br/>
           <input type="email" onblur="checkEmail()" id="email" class="os-m text-box-design" style="width:300px;" name="email" placeholder="Enter your email"required><br/>
           <label id="emailError" style="font-size:10px; color:red;"></label><br/>
        <label class="os-m">Mobile Number</label><br/>
           <input type="number" onblur="checkNumber()" class="os-m text-box-design" id="number" style="width:300px;" name="number" placeholder="Enter your Mobile Number"required><br/>
           <label id="numberError" style="font-size:10px; color:red;"></label><br/>
           <label class="os-m">Password</label><br/>
           <input type="password" onblur="passwordValidation()" class="os-m text-box-design" id="password" style="width:300px;" name="password" placeholder="Enter Password" required><br/>
       	<label id="passwordError" style="font-size:10px; color:red;"></label><br/>
       <label class="os-m">Confirm Password</label><br/>
           <input type="password" oninput="passwordMatch()" class="os-m text-box-design" id="confirmPassword" style="width:300px;" name="confirmPassword" placeholder="Enter Password again" required><br/>
      	<label id="password1Error"  style="font-size:10px; color:red;"></label><br/>
      <label class="os-m">Address</label><br/>
           <textarea  class="os-m text-box-design" required style="width:300px;" name="address" placeholder="Address"></textarea><br/>
      <label class="os-m">Gender</label><br/>
           <input type="radio"   name="gender" id="Male" value="Male"/>Male
     		<input type="radio" name="gender" id="Female" value="Female"/>Female<br/><br/>
      <label class="os-m">Date Of Birth</label><br/>
           <input type="date" onclick="todaysDate()" class="os-m text-box-design" id="dob" required style="width:300px" name="dob "/><br/>		
      <label class="os-m" >Favorites</label><br/>
           			
		    <input type="checkbox" name="Electronics" id="Electronics" value="Electronics"/>Electronics
		    <input type="checkbox" name="gadgets" id="gadgets" value="gadgets"/>Gadgets
		    <input type="checkbox" name="mobiles" id="mobiles" value="mobiles"/>Mobile<br/>
		    <input type="checkbox" name="Furniture" id="Furniture" value="Furniture"/>Furniture
		    <input type="checkbox" name="Jewels" id="Jewels" value="Jewels"/>Jewels
		    <input type="checkbox" name="Clothes" id="Clothes" value="Clothes"/>Clothes<br/><br/>
		<label class="os-m">Country</label><br/>
           <select  class="os-m text-box-design" id="country" style="width:300px" name="country ">
	        <option value="Choose" disabled selected>Choose the country</option>
	        <option value="India">India</option>
	        <option value="USA">USA</option>
	        <option value="Australia">Australia</option>
	        <option value="Japan">Japan</option>
           </select><br/><br/>     
		 </div>
       
        <div class="submit-container">
        	<button id="register" class="success-btn os-m" >SUBMIT</button><br/><br/>
        </div>
        <div class="os-m submit-container">
         <a href="loginPage.jsp">Already have an account Login here</a>
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
	
	function checkName(){
		var name= document.getElementById("name").value;
		var regex= /^[a-zA-Z ]*$/;
		const found = name.match(regex);
		
		if(found==null){
			document.getElementById("nameError").style.display="inline";
			document.getElementById("nameError").innerHTML="invalid name i.e..only alphabets allowed!";
		}
		else{
			document.getElementById("nameError").style.display="none";
		}
	}
	function checkEmail(){
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
	function checkNumber(){
		var number = document.getElementById("number").value;
		var length = number.toString().length;
		if(length==10){
			documet.getElementById("numberError").style.display="none";
		}
		else{
			document.getElementById("numberError").innerHTML ="Please Enter a valid number";
		}
	}
	function passwordValidation(){
		var password = document.getElementById("password").value;
		var regex =  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
		const found= password.match(regex);
		if(password=="" || password==null){
			document.getElementById("passwordError").style.display="none";
		}
		if(found==null){
			document.getElementById("passwordError").innerHTML="<ol>";
				document.getElementById("passwordError").innerHTML+="<li>Password is 8 characters long.</li>";
				document.getElementById("passwordError").innerHTML+="<li>Uppercase characters (A-Z)</li>";
				document.getElementById("passwordError").innerHTML+="<li>Digits (0-9)</li>";
				document.getElementById("passwordError").innerHTML+="<li>Lowercase characters (a-z)</li>";
				document.getElementById("passwordError").innerHTML+="<li>Special characters</li></ol>";
		}
		else{
			document.getElementById("passwordError").style.display="none";
		}
	}
	function passwordMatch(){
		var password = document.getElementById("password").value;
		var confirmPassword = document.getElementById("confirmPassword").value;
		if(password == confirmPassword){
			document.getElementById("password1Error").style.display="none";
			
		}
		else{
			document.getElementById("password1Error").style.display="inline";
			document.getElementById("password1Error").innerHTML="Password does not match";
		}
		
	}
	function todaysDate(){
		var today = new Date();
		var date = String(today.getDate());
		var month = String(today.getMonth()+1);
		var year = String(today.getFullYear());
		var maxDate = year + "-" + month + "-"+date;	
		
		document.getElementById("dob").setAttribute("max",maxDate);
	}

</script>
</html>