
<%@include file="all_js_css.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='Images/login.svg' rel="icon">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	color: white;
}

body {
	display:flex;
	flex-direction: column;
    
	font-family: 'Poppins', sans-serif;
	color: white;
}
/* ------------------------------- Login ------------------------------ */
.login-box {
	background: transparent;
	padding: 35px;
	width: 400px;
	height: 500px;
	position: absolute;
	top: 38%;
	left: 50%;
	transform: translate(-50%, -50%);
	overflow: hidden;
	box-shadow: 0px 0px 6px #aaa9a9a2, 0px 0px 2px #aaa9a9a2;
}

.textbox {
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 25px 0;
	border-bottom: 2px solid #4caf50;
	font-weight: bolder;
}

.textbox:hover {
	border-bottom: 2px solid #18D7F7;
}

.textbox i {
	width: 26px;
	float: left;
	text-align: center;
}

.textbox input {
	border: none;
	outline: none;
	background: none;
	color: crimson;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 12px;
}

.form-container form {
	max-width: 450px;
	padding: 0 20px;
	position: absolute;
	top: 130px;
	transition: transform 1s;
}

form .btn {
	width: 100%;
	border: none;
	cursor: pointer;
	margin: 10px 0;
}

form .btn:focus {
	outline: none;
}

.btn {
	display: inline-block;
	background: #ff523b;
	color: #fff;
	padding: 8px 30px;
	margin: 30px 0;
	border-radius: 30px;
}

.btn:hover {
	transition: all 0.3s ease;
	color: white;
	background: #F12C0D;
}

#Loginform{
margin-left:11px;
}
form a {
	font-size: 12px;
}

#indicatorr {
	width: 90px;
	border: none;
	background: white;
	height: 4px;
	margin-top: 8px;
	transform: translate(125px);
	transition: transform 1s;
}

.for {
	padding-left: 50px;
}

.forr {
	padding-left: 60px;
}

.form-container span {
	font-weight: bold;
	padding: 0 10px;
	color: #555;
	cursor: pointer;
	width: 100px;
	display: inline-block;
}

.form-container form {
	max-width: 450px;
	padding: 0 20px;
	position: absolute;
	top: 130px;
	transition: transform 1s;
}

.form-container {
	width: 450px;
	height: 500px;
	position: relative;
	text-align: center;
	margin: 90px auto;
}

#regAD, #regUS {
	font-size: 15px;
	color: white;
}

span {
	color: white;
}

#regUS:hover {
	color: #ff523b;
	transition: 0.25s;
}

#regAD:hover {
	color: #ff523b;
	transition: 0.25s;
}

.form-btn span {
	color: #ccebff;
	font-size: xx-large;
}

/* ------------------------------- alert box  ------------------------------ */
.alert {
    padding: 5px;
    color: white;
    opacity: 1;
    transition: opacity 0.6s;
    margin-bottom: 15px;
}

.alert.success {
    background-color: #04AA6D;
    
}

.closebtn {
    display:inline;
    padding : 5px 3px;
    margin-left:4px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
.Img {
	background: url('Images/n3.jpg') no-repeat;
	background-size: cover;
	-webkit-background-size: cover;
	background-position: center center;
	height: 100vh;
	position: fixed;
	left: 0;
	right: 0;
	z-index: -1;
	filter: blur(4px);
	-webkit-filter: blur(4px);
}


</style>
<title>Note Taker</title>
</head>
<body>
	<div class="Img"></div>


	<%@include file="navbar.jsp"%>

	<!---------------------------------------------- Login page --------------------------------->
	<div class="form-container">
		<div class="login-box">
			<div class="form-btn">
				<span id="b">Login</span>
				<hr id="indicatorr">
			</div>

			<%
			String err = (String) request.getAttribute("error");

			if (err != null) {
			%>
			 <div class="alert success dis" id="alertbox">
			 <span class="closebtn">&times;</span>
			 <strong><%=err %></strong>
            
        </div>

			<%
			}
			%>
			<%
			ServletContext context = request.getServletContext();

			if (context.getAttribute("succ")!=null) {
			%>
			 <div class="alert success dis" id="alertbox">
			 <span class="closebtn">&times;</span>
			 <strong><%=context.getAttribute("succ") %></strong>
            
        </div>

			<%
			}
			%>
				


			<form action="LoginServlet" method="post" id="Loginform" autocomplete="off">
				<div class="textbox">
					<i class="fa fa-user" aria-hidden="true"></i> <input type="text"
						placeholder="Username" name="name" value="" required autofocus>
				</div>

				<div class="textbox">
					<i class="fa fa-lock" aria-hidden="true"></i> <input type="email"
						placeholder="Email" name="email" value="" required>
				</div>


				<div class="textbox">
					<i class="fa fa-lock" aria-hidden="true"></i> <input
						type="password" placeholder="Password" name="password" value=""
						required>
				</div>

				<button type="submit" class="btn">Login</button>
				<a href="forgotpassword.jsp" class="forr">Forgot Password?</a><br> <br>
				Don't have an account?<a href="registration.jsp" id="regUS">
					Register Here..</a>

			</form>

		</div>
	</div>
<script>

// remove div 

const close = document.getElementsByClassName("closebtn")


for (i = 0; i < close.length; i++) {
    close[i].onclick = function () {
        var div = this.parentElement;
        div.style.opacity = "0";
        setTimeout(function () { div.style.display = "none"; }, 500);
    }
} 
</script>
</body>
</html>
