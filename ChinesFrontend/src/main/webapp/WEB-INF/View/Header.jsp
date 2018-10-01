<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#"><img src="resources/image/6.jpg" alt="FrescaEats" width="100" height="70"></img></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Home">Home</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="admin">Admin</a>
      </li>
      <li class="nav-item">
       <security:authorize access="isAnonymous()">
      
      </li>   
       <li class="nav-item">
        <a class="nav-link" href="login">LogIn</a> 
        </li>
         <li class="nav-item">
        <a class="nav-link" href="Signup">SignUp</a> 
        </li>
        </security:authorize>
        
        <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Add Category/Product
     </a>
     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
       <a class="dropdown-item" href="Category">Add Category</a>
       <div class="dropdown-divider"></div>
       <a class="dropdown-item" href="Product">Add Product</a>
       <div class="dropdown-divider"></div>
       
           </div>
          </li>
          
       </ul>
      
  </div>  
</nav>
</body>

