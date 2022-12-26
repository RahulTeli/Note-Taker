
<%@ include file="all_js_css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,shrink-to-fit=no">

<title>Login</title>

<style>

/* --------------------------- header -----------------------------------------*/
.navbar {
	display: flex;
	align-items: center;
	padding: 15px;
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
	color: white;
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
</body>
</html>