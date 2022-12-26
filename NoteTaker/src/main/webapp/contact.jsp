<%@ include file="all_js_css.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="Images/square.svg" rel="icon">
<title>ContactUs</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
}

body {
	box-sizing: border-box;
	background-color: #efefef;
	font-family: 'Poppins', sans-serif;
}

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
	text-decoration: none; 
	transition: 0.50s;
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




/* ---------------------------------- contact ---------------------- */
.contact-box {
	width: 500px;
	background-color: #fff;
	box-shadow: 0 0 20px 0 #999;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	position: absolute;
}

form {
	margin: 35px;
}



.input-field {
	width: 422px;
	height: 40px;
	margin-top: 20px;
	padding-left: 12px;
	padding-right: 10px;
	border: 1px solid #777;
	border: radius 14px;
	outline: none;
	font-size: 17px;
}

.textarea-field {
	height: 150px;
	padding-top: 10px;
}

.btn {
	border-radius: 20px;
	color: #fff;
	margin-top: 18px;
	padding: 12px 25px;
	background-color: #47c35a;
	font-size: 12px;
	border: none;
	cursor: pointer;
}

.btn:hover {
	color: black;
	background-color: white;
	border: 1px solid #47c35a;
	transition: 0.75s ease;
}


/* <!--------------------------------- Media Query --------------------------------> */

@media (max-width:500px){
.contact-box{
width: 400px;
margin-top:35px;
}

.input-field{
width:330px;
}
.logo {
	margin-left: -10px;
	}


}
@media (max-width:1195px){
.contact-box{
margin-top:35px;
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







	<!-- --------------------------- Contact ---------------------------------------- -->
	
	<div class="contact-box">
		<form method="post" action="Contact" onsubmit="func();" autocomplete="off">
			<input type="text" class="input-field" placeholder="Name" name="Name"
				required> <input type="email" class="input-field"
				placeholder="Email" name="Email" required> <input
				type="text" class="input-field" placeholder="Subject" name="Subject"
				required>
			<textarea class="input-field textarea-field" placeholder="Message"
				name="Message" required></textarea>
			<button type="submit" class="btn" id="btn"  autofoucus>Send</button>
			

		</form>
	</div>


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" ></script>
<script>

function func(){
	
	swal("Contact!", "Message Sent Successfully", "success");
	
}

</script>
</body>
</html>