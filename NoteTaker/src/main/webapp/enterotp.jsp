<%@include file="all_js_css.jsp"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500;600&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap')
	;
@import
	"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
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
	margin: 50px auto;
	background: #fff;
	width: 630px;
	border-radius: 15px;
	padding: 40px;
	border: 1px solid black;
}
.icon {
	font-size:25px;
	padding: 10px;
	min-width: 50px;
	text-align: center;
}
.wrapper:hover {
	transition: 0.5s all ease;
	box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.4);
}

h2 {
	text-align: center;
}

img {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	margin: 0 228px;
	margin-bottom: 20px;
}

.input-icons i {
	position: absolute;
}

.input-icons {
	margin-left: 55px;
	width: 80%;
	margin-bottom: 10px;
	margin-top: 20px;
}

.input-field {
	width: 100%;
	padding: 8px;
	text-align: center;
}

.btn {
	margin-left: 55px;
	width: 80%;
}
</style>
</head>


<body>

	<!----------------------------- header ------------------------------------->
	<div class="jj">
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
	</div>


	<!-------------------------------------- body ------------------------------------->

	<div class="wrapper">
		<div class="team-mem">

			<img src="Images/lock.png">
			<h2>OTP</h2>


			<%
			if (request.getAttribute("message") != null) { %>
				<div class="alert alert-warning alert-dismissible fade show"
				role="alert">
				<strong>Status : </strong><%=request.getAttribute("message") %>
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>	
			</div>
			<%
			}
			%>
			<form method="post" action="ValidateOTP" autocomplete="off">
				<div class="input-icons">
					<i class="fa fa-mobile icon"></i><input class="input-field" type="text" name="otp"
						placeholder="Enter OTP" required>
				</div>

				<button type="submit" class="btn btn-primary"
					style="margin-bottom: 6px; margin-top: 7px;">Submit</button>
				<a href="index.jsp" class="btn btn-danger">Cancel</a>
			</form>
		</div>

	</div>



</body>
</html>