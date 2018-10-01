<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@include file="Header.jsp" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);
@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
body, html {
  height: 100%;
}
body {
  font-family: 'Open Sans';
  font-weight: 100;
  overflow: auto;
  background-repeat: no-repeat;
  background-size:1170px;
  
  
}
input {
  ::-webkit-input-placeholder {
     color: rgba(255,255,255,0.7);
  }
  ::-moz-placeholder {
     color: rgba(255,255,255,0.7);  
  }
  :-ms-input-placeholder {  
     color: rgba(255,255,255,0.7);  
  }
  &:focus {
    outline: 0 transparent solid;
    ::-webkit-input-placeholder {
     color: rgba(0,0,0,0.7);
    }
    ::-moz-placeholder {
       color: rgba(0,0,0,0.7);  
    }
    :-ms-input-placeholder {  
       color: rgba(0,0,0,0.7);  
    }
  }
}



.login-form {
  //background: #222;
  //box-shadow: 0 0 1rem rgba(0,0,0,0.3);
  min-height: 5rem;
  margin: auto;
  max-width: 50%;
  padding: 6rem;
}
.fa-stack-1x {
    color:black;
  }

.login-text {
	
  //background: hsl(40,30,60);
  //border-bottom: .5rem solid white;
  color: white;
  font-size: 1.5rem;
  margin: 0 auto;
  max-width: 50%;
  padding: .5rem;
  text-align: center;
  //text-shadow: 1px -1px 0 rgba(0,0,0,0.3);
  
}

.login-username, .login-password ,.Login-username{
  
  border: 0 solid;
  border-bottom: 1px solid rgba(white, .5);
  color: black;
  display: block;
  margin: 1rem;
  padding: .5rem;
  transition: 250ms background ease-in;
  width: calc(100% - 3rem);
  &:focus {
    background: white;
    color: black;
    transition: 250ms background ease-in;
  }
}

.login-forgot-pass {
  //border-bottom: 1px solid white;
  bottom: 0;
  color: white;
  cursor: pointer;
  display: block;
  font-size: 75%;
  left: 0;
  opacity: 0.6;
  padding: .5rem;
  position: absolute;
  text-align: center;
  //text-decoration: none;
  width: 100%;
  &:hover {
    opacity: 1;
  }
}
.login-submit {
  border: 1px solid white;
  background: transparent;
  color: white;
  margin:12px 25px;
  min-width: 5px;
  padding: .25rem;
  transition: 100ms background ease-in;
  &:hover, &:focus {
    background: white;
    color: black;
    transition: 250ms background ease-in;
  }
  	
  
}

[class*=underlay] {
  left: 0;
  min-height: 100%;
  min-width: 100%;
  position: fixed;
  top: 0;
}
.underlay-photo {
  animation: hue-rotate 6s infinite;
  background-size: cover;
  -webkit-filter: grayscale(30%);
  z-index: -1;
}
.underlay-black {
  background: rgba(0,0,0,0.7);
  z-index: -1;
}

@keyframes hue-rotate {
  from {
    -webkit-filter: grayscale(30%) hue-rotate(0deg);
  }
  to {
    -webkit-filter: grayscale(30%) hue-rotate(360deg);
  }
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
</head>
<body  background="C:\Users\MOHIT\Desktop\Project Work\frontend\src\main\webapp\resources\Images\5.jpg">
<spring:form action="${pageContext.request.contextPath}/Signup" modelAttribute="user" method="post" class="login-form">
  <p class="login-text">
    <span class="fa-stack fa-lg">
      <i class="fa fa-circle fa-stack-2x"></i>
      <i class="fa fa-lock fa-stack-1x"></i>
    </span>
  </p>
  <spring:input type="text" class="Login-username" autofocus="true" required="true" placeholder="FirstName" path="firstName"/>
    <spring:input type="text" class="Login-username" autofocus="true" required="true" placeholder="LastName" path="lastName"/>
    <spring:input type="text" class="Login-username" autofocus="true" required="true" placeholder="Dob" path="Dob"/>
  <spring:input type="email" class="login-username" autofocus="true" required="true" placeholder="Email" path="Email" />
  <spring:input type="password" class="login-password" required="true" placeholder="Password" path="password"/>
  <spring:input type="Number" class="Login-username" autofocus="true" required="true" placeholder="Contact" path="contact"/>
 
      
    
  
  <input type="submit" name="SignUp" value="SignUp" class="login-submit" />
  <input type="submit" name="Login" value="login" class="login-submit" />
</spring:form>
<div class="underlay-photo"></div>
<div class="underlay-black"></div> 

</body>
</html>