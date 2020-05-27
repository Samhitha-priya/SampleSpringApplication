<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}">
      

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;margin-left:430px;width:31%;}
form {border: 3px solid #f1f1f1; }

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}



.container {
  padding: 16px;
  width:100%;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
  padding:3px;
}

 #alert{
 padding:5px;
 text-align:center;
 }

</style>
</head>
<body>

<h2 style='padding-left:10px;'>Login Form</h2>

<form action="/validateUser" method="GET" >

<%if(request.getAttribute("message")!=null){ %>
<div class="alert alert-danger" id="alert">
 <%=request.getAttribute("message") %>
</div>
<%} %>

   <div class="container">
    <label for="uname"><b>Username</b></label>
    
    <input type="text" placeholder="Enter Username" name="uname" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    <button type="submit">Login</button>
    
  </div>
  
  
   <div class="container signin">
    <p>Don't have an account? <a href="/Register">Register</a>.</p>
  </div>

 
</form>

</body>




</html>