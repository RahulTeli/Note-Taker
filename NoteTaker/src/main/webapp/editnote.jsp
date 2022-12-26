

<%@include file="all_js_css.jsp"%>
<%@ page import="helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.query.Query"%>
<%@ page import="doit.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Notes</title>
<link href="Images/plus.png" rel="icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
}

body {
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

/* ---------------------- add btn ------------------ */
.floating-btn {
	cursor: pointer;
	width: 70px;
	position: fixed;
	bottom: 50px;
	right: 50px;
	z-index: 999;
	position: fixed;
}

.floating-btn:hover {
	transition: opacity 0.6s;
}

/*-----------------------------container -------------------------------*/
.row {
	margin: 20px 350px;
	display: flex;
}

.card:hover {
	background: #eff0f1;
}

.btn-success:hover {
	color: green;
	background: none;
}

.btn-danger:hover {
	background: none;
	color: crimson;
}
input{
font-size:50px;
}
/* -------------------- edit note div --------------------- */
.edit p{
font-family: 'Poppins', sans-serif;
font-size:30px;
}

</style>
</head>
<body>
	<!-- ------------------------------ navbarr ------------------------------ -->
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
							<li><form action="Logoutcontrolservlet" method="post">
									<button type="submit" class="btn btn-dark">Logout</button>
								</form></li>
						</ul>
					</nav>

				</div>

			</div>
		</div>
	</div>





<!-- ------------------------------ Edit Notes ------------------------- -->


<div class="alert alert-warning edit pb-0" style="margin:20px 180px;text-align:center;" role="alert">
 <p>Edit Notes</p>
</div>

<!-- --------------------------------form ---------------------- -->

<%

int id = Integer.parseInt(request.getParameter("note_id").trim());  // whenever we are using getParameter() it always store string value;
Session s = FactoryProvider.getFactory().openSession();
Note note = s.get(Note.class,id);


%>
<div class="container col-9" style="margin-top:20px;">
<form action="EditNoteServlet" method="post" >
  <div class="form-group">
  <input type="hidden" name = "id" value="<%=note.getID()%>" >
    <label for="exampleInputEmail1"><b>Title</b></label>
    <input type="text" class="form-control" name="title" style=" height:50px;"  placeholder="Enter Title" value="<%=note.getTitle() %>">
    </div>
  <div class="form-group">
    <label for="exampleInputPassword1"><b>Content</b></label>
    <textarea type="text"  rows=6 class="form-control" name="content" placeholder="Enter Content" ><%=note.getContent() %></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Update</button>
  <a href = "home.jsp" class="btn btn-warning mx-5 px-3">Home</a>
</form>

	</div>

</body>
</html>


