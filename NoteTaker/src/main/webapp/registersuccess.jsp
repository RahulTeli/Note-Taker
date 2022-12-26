<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <link href="Images/circle-check-solid.svg" rel="icon">
    <title>Successful</title>

    <style>

 @import"https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css";
 @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
}
body{
    display: flex;
    margin:0 455px;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: linear-gradient(#D5A3FF 0%, #77A5F8 100%);
}
.wrapper{
    background: #fff;
    width: 630px;
    border-radius: 15px;
    padding: 40px;
    box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.4);
}
h2{
    text-align: center;
}

img{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin: 0 215px;
    margin-bottom:20px;

}
h1{
    position: relative;
    text-align: center;
    font-size: 40px;
    font-weight: 500;
    margin-top:20px;
    margin-bottom: 5px;
    padding-bottom: 20px;
    font-family: 'Ubuntu', sans-serif;
}
p{
  font-size:25px;
  text-align: center;
  margin-bottom:25px;
  margin-left: 0px;
  }

  a:hover{
  color:green;
  transition: 0.50s ;
  cursor : pointer;

  }
  a{
   text-decoration:none;
   color: black;
   }

    </style>
</head>

<body>
<%
String messege = (String)session.getAttribute("messege");
%>
<div class="wrapper">
         <div class="team-mem">
                <h1><%= messege %></h1>
                 <img src="Images/suc.png">
             <p><a href="index.jsp"> Login here </a></p>
            </div>

    </div>
<% 

session.removeAttribute("messege");
%>

</body>
</html>