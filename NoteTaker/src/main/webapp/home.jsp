
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
<title>Home</title>
<link href="Images/house-solid.svg" rel="icon">

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
.Img{
background: url('Images/computer.jpg') no-repeat;
	background-size: cover;
	-webkit-background-size: cover;
	background-position: center center;
	height: 100vh;
	position: fixed;
	left: 0;
	right: 0;
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
	color: white;
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


/* --------------------------------  media query --------------------- */
@media ( max-width :1200px) {
	.row {
		margin: 20px 270px;
	}
}

@media ( max-width :1000px) {
	.row {
		width: 200px;
		margin: 20px 140px;
	}
}
</style>
</head>
<body>
<div class="Img"></div>
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





	<%
	String email = (String) session.getAttribute("eid");

	Session sess = FactoryProvider.getFactory().openSession();
	String query = "from Note where Email =:e";
	@SuppressWarnings("unchecked")
	Query<Note> q = sess.createQuery(query);
	q.setParameter("e", email);
	List<Note> list = q.list();

	if (list.size() > 0) {
	%>
	<div class="row">

		<div class="col-12">
			<%
			for (Note note : list) {
			%>
			<div class="card" style="width: 40rem; margin-bottom: 25px;">
				<img class="card-img-top mt-4 mx-auto" src="Images/note-taking.png"
					style="max-width: 100px;" alt="Card image cap">

				<div class="card-body px-5">
					
					<%
					ServletContext context = getServletContext();
					if(context.getAttribute("NID")!=null){
					if (Integer.parseInt(context.getAttribute("NID").toString()) == note.getID()) {
					%>
					<div class="alert alert-success alert-dismissible fade show"
						role="alert">
						<strong>Status : </strong> Note Updated Successfully
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<%
					}}
					%>

					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text"><%=note.getContent()%></p>
					<p>
						<b class="text-primary"><%=note.getAddedDate()%></b>
					</p>
					<div class="container text-center mt-2" style="display:flex;margin-left:170px;">
						<a href="editnote.jsp?note_id=<%=note.getID()%>"
							class="btn btn-success mr-2 px-4">Edit</a>

						<form method="post" onsubmit="return false;" id="myform" >
							<button type="submit" class="btn btn-danger del" onclick="myfunc(<%=note.getID()%>)">Delete</button>
						</form>


					</div>

				</div>
			</div>



			<%
			}
			sess.close();
			%>

		</div>

	</div>
	<%
	} else {
	%>

	<div class="container p-5 my-3  text-black mt-5"
		style="max-width: 500px; border-radius: 5px;">
		<img src="Images/nothing.png"
			style="max-width: 200px; margin-left: 60px; margin-bottom: 10px;" />
		<p style="text-align: center; font-size: 40px;">Nothing to show</p>
	</div>
	<%
	}
	%>






	<!-- --------------------------- ADD ------------------- -->

	<form action="AddNoteServlet" method="post">
		<div class="modal fade" id="AddModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">

				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Add Notes</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="hidden" value=<%=session.getAttribute("eid")%>
							name="email"></input>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Title
								:</label> <input type="text" class="form-control" id="recipient-name"
								name="title">
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Content
								:</label>
							<textarea class="form-control" id="message-text" name="content"></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-info px-3">Add</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
			</div>
		</div>
	</form>




	<button type="button" class="b" data-toggle="modal"
		data-target="#AddModal">
		<img src="Images/plus.png" class="floating-btn"></img>
	</button>


	
<!-- --------------------------------- Delete logic ----------------------------------- -->
	<script>
		
		
		function myfunc(id){
			
			Confirm(id);
		}
			
			
			function Confirm(id) 
			{ 
				swal({
					  title: "Are you sure?",
					  text: "Once deleted, you will not be able to recover this note!",
					  icon: "warning",
					  buttons: true,
					  dangerMode: true,
					})
					.then((willDelete) => {
					  if (willDelete) {
						  $("#myform").attr("onsubmit","return true;");
							$("#myform").attr("action","DeleteServlet?note_id="+id)
							$("#myform").submit();
					    swal("Your Note has been deleted!", {
					      icon: "success",
					    });
					    
					  } else {
					    
					  }
					});

			}
			
		
			
	</script>


</body>
</html>


