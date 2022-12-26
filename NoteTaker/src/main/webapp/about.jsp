<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="Images/users.svg" rel="icon">
<title>About Us</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
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
	
	
	min-height: 100vh;
	background: linear-gradient(#D5A3FF 0%, #77A5F8 100%);
}

/* --------------------------- header -----------------------------------------*/
.navbar {
	display: flex;
	align-items: center;
	padding-top: 20px;
	padding-left:100px;
	padding-right:100px;
	
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
	margin-right: 20px;
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

/*------------------------------------ about ------------------------- */
.con {
margin: 0 460px;
justify-content: center;
	align-items: center;
	margin-top: 0px;
}

h2 {
	text-align: center;
}

img {
	width: 300px;
	height: 300px;
	border-radius: 50%;
	margin: 5px 60px;
	box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.4);
}

h1 {
	position: relative;
	text-align: center;
	font-size: 40px;
	font-weight: 500;
	margin-top: 20px;
	margin-bottom: 40px;
	padding-bottom: 20px;
	font-family: 'Ubuntu', sans-serif;
}

h1::before {
	content: "";
	position: absolute;
	bottom: 0px;
	left: 50%;
	width: 180px;
	height: 3px;
	background: #E93086;
	transform: translateX(-50%);
}

.fa {
	padding: 20px;
	font-size: 30px;
	width: 90px;
	text-align: center;
	text-decoration: none;
	margin: 5px 2px;
	border-radius: 50%;
	text-align: center;
}

.fa:hover {
	opacity: 0.7;
}

.fa-linkedin {
	background: #007bb5;
	color: white;
}

.fa-github-square {
	background: black;
	color: white;
}

.fa-instagram {
	background: red;
	color: white;
}

.members {
	display: flex;
}

.members a {
	margin: 20px 28px;
}


/* <!--------------------------------- Media Query --------------------------------> */


@media(max-width:1190px){

.con{

margin: 0 373px;
justify-content: center;
	align-items: center;
	margin-top: 0px;

}
@media(max-width:1130px){

.con{

margin: 0 303px;
justify-content: center;
	align-items: center;
	margin-top: 0px;

}
@media(max-width:1015px){

.con{

margin: 0 295px;
justify-content: center;
	align-items: center;
	margin-top: 0px;

}
@media(max-width:990px){

.con{

margin: 0 280px;
justify-content: center;
	align-items: center;
	margin-top: 0px;

}


}

</style>
</head>
<body>

<!----------------------------------------- Header ----------------------------------------------------------------->

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

<!-- ------------------------------------ about ---------------------------------------- -->
	<h1>About</h1>

	<div class="con">


		<img src="Images/RT.jpg">
		<h2>Rahul Rameshwarlal Teli</h2>
		<div class="members">
			<a href="#" class="fa fa-linkedin"></a> <a href="#"
				class="fa fa-github-square"></a> <a href="#" class="fa fa-instagram"></a>
		</div>


	</div>
</body>
</html>
