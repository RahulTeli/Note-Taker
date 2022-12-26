<%@include file="all_js_css.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="Images/arrow-rotate-left-solid.svg" rel="icon">
<title>Reset Password</title>
<style>
@import
	"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	;

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	font-family: 'Poppins', sans-serif;
	font-color: black;
}
/* --------------------------- header -----------------------------------------*/
.navbar {
	display: flex;
	align-items: center;
	padding: 15px;
	font-family: 'Roboto Slab', serif;
}

nav {
	flex: 1;
	text-align: right;
}

nav ul {
	display: inline-block;
	list-style-type: none; /* removing bullets */
	margin-right: -30px;
}

nav ul li {
	display: inline-block; /* making horizontal */
	margin-right: 15px;
}

nav ul li a:hover {
	color: red;
	transition: 0.50s;
	text-decoration: none;
}

a {
	text-decoration: none; /* removing underline*/
	color: black;
}

.logo {
	margin-left: -30px;
	margin-bottom: 30px;
	font-size: 40px;
	font-family: 'Roboto Slab', serif;
}

.logo span {
	color: crimson;
}

.logo span:hover {
	color: Black;
	transition: 1s ease;
	cursor: pointer;
}

#MenuItem {
	margin-left: 30px;
}

/* ---------------------------------------- body ------------------------ */
.wrapper {
	margin: 100px auto;
	background: #fff;
	width: 630px;
	padding: 20px;
	border: 1px solid black;
}

h2 {
	text-align: center;
}

img {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	margin: 0 215px;
	margin-bottom: 20px;
}

p {
	font-size: 20px;
	text-align: center;
	margin-bottom: 0px;
	margin-top: 25px;
}

p:hover {
	color: green;
	transition: 0.50s;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: black;
}

.input-icons i {
	position: absolute;
}

.input-icons {
	margin-left: 55px;
	width: 80%;
	margin-bottom: 10px;
	margin-top: 30px;
}

.icon {
	padding: 10px;
	min-width: 50px;
	text-align: center;
}

.input-field {
	width: 100%;
	padding: 8px;
	text-align: center;
}

.btn {
	margin-left: 55px;
	margin-top: 20px;
	width: 80%;
}
</style>
</head>

<body>

	<!-- ------------------------------ navbarr ------------------------------ -->
	<div class="hea">
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<span>Note</span> Taker
				</div>
				<nav>
					<ul id="MenuItem">
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</nav>

			</div>

		</div>
	</div>



	<!-- ----------------------------------- Reset password ------------------ -->
	<div class="wrapper">
		<div class="team-mem">
			<h2>Reset Password</h2>
			<div id="mbox"></div>

			<form method="post" action="NewPassword" onsubmit="return check()">
				<div class="input-icons">
					<i class="fa fa-key icon"></i> <input class="input-field"
						type="password" name="NewPassUser" placeholder="New Passsword" id="NewPassUser">
				</div>
				<div class="input-icons">
					<i class="fa fa-key icon"></i> <input class="input-field"
						type="password" name="ConfNewPassUser" id="ConfNewPassUser"
						placeholder="Confirm Password">
				</div>
				<input type="hidden" name="email_id" value="">
				<button type="submit" class="btn btn-primary">Reset
					Password</button>

			</form>
		</div>

	</div>

<script>

function check(){
	
	
	const pass = document.getElementById("NewPassUser").value;
	const confpass = document.getElementById("ConfNewPassUser").value;
	
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