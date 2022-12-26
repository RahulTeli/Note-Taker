<%@ include file="all_js_css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,shrink-to-fit=no">
<link href="Images/reg.svg" rel="icon">
<title>Registration</title>


<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap')
	;

body {
	padding: 0;
	font-family: 'Poppins', sans-serif;
	background: url("Images/scene1.jpg") no-repeat;
	background-size: cover;
	box-sizing:border-box;
}

.login-box {
	border-radius: 20px 20px 20px 20px;
	padding: 40px;
	width: 500px;
	height: 600px;
	position: absolute;
	top: 53%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: white;
	background: black;
}

.login-box h1 {
	float: left;
	font-size: 40px;
	border-bottom: 6px solid #4caf50;
	margin-bottom: 50px;
	padding: 13px 0;
}

.textbox {
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 25px 0;
	border-bottom: 1px solid #4caf50;
	font-weight: bolder;
}

.textbox input {
	border: none;
	outline: none;
	background: none;
	color: white;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 10px;
}

.btn {
	width: 100%;
	background: none;
	border: 2px solid #93c8fa;
	color: white;
	padding: 10px;
	font-size: 18px;
	cursor: pointer;
	margin-top: 5px;

}
.btn-l{
margin-top: 0px;
border: 2px solid #ff3300;

}

#btn-h:hover {
	background: #ff3300;
	color:white;
	transition: 1s ease;
}

.btn:hover {
	background: #93c8fa;
	transition: 1s ease;
}

.ll {
	color: white;
	text-decoration: none;
	margin-top: 2px;
	margin-left: 170px;
	font-size: 20px;
}

.ll:hover {
	color: #93c8fa;
	trasition: 0.50s;
}


h3 {
	margin-left: 150px;
	font-size: 15px;
	color: red;
}
.mess{
display:none;
}
/* <!--------------------------------- Media Query --------------------------------> */

@media(max-width:600px){

.login-box{
width:360px;
}
.ll{
margin-left:85px;
}

}
@media(max-width:1195px){

.login-box{
top:55%;

}
}

</style>
</head>
<body>
	
	<!-- -----------  getting message from js ---------- -->
	<div id="mbox">
	
	</div>
	
	<!-- -------------------- getting error message from servlet that email is already exists---- -->
	<% 
	
	  String info = (String)request.getParameter("info");
	
	if(info!=null){
		
	
	%>
	<div class="alert alert-danger alert-dismissible fade show " role="alert">
	
	<strong>Messege :</strong> <%= info %> 
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	<span aria-hidden="true">&times;</span> </button>
	
	 </div>
	<%
	}
	%>
	
	<form action="RegisterServlet" method="post"
		onsubmit="return checkpass()" autocomplete="off">


		<div class="login-box">
			<h1>SignUp</h1>
			<div class="textbox">
				<input type="text" placeholder="Username" name="username" value=""
					required>
			</div>


			<div class="textbox">
				<input type="Email" placeholder="Email" name="eemail" value=""
					required>
			</div>

			<div class="textbox">
				<input id="pass" type="password" placeholder="Password" name="pass"
					value="" required>
			</div>

			<div class="textbox">
				<input id="confpass" type="password" placeholder="Confirm Password"
					name="confpass" value="" required>
			</div>


			<button type="submit" class="btn">SignUp</button>
			<br> <br> <a href="index.jsp" class="btn btn-l" id="btn-h">Login here</a>

		</div>

	</form>


	<script>
	
	function checkpass(){
		
	
		const pass = document.getElementById("pass").value;
		const confpass = document.getElementById("confpass").value;
		
			if(pass.length < 5){
				
				document.getElementById("mbox").innerHTML = '<div class="alert alert-warning alert-dismissible fade show " role="alert"><strong>Messege :</strong> Password must be more than 5 characters !<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span> </button></div>';
				return false;
			}
		if(pass!= confpass){
			document.getElementById("mbox").innerHTML = '<div class="alert alert-warning alert-dismissible fade show " role="alert"><strong>Messege :</strong> Password is not matched ! <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span> </button></div>';			
			return false;
		}
		else{
			return true;
			
		}
	}
	
	
		
	</script>
</body>
</html>