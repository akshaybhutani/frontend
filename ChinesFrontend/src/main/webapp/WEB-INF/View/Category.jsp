<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/image/7.jpg"    -webkit-filter: blur(5px); /* Safari 6.0 - 9.0 */
    filter: blur(5px);
}>


<div class="container">
<h2 style="color:white;" align="center">Add Category</h2><hr>
<spring:form action="${pageContext.request.contextPath}/addCategory" modelAttribute="cat" method="post">
<div class= "form-group">
<c:if test="${not empty cat.categoryName}">
CategoryId<spring:input type="text" path="categoryId" readonly="true" disabled="true"/>
<spring:hidden path="categoryId"/>
</c:if>
</div>

<div class= "form-group" style="color:white;">
Category Name<spring:input type="text" path="categoryName"/>
</div>
<div class="form-group" style="color:white;">
Category Description<spring:input type="text" path="categoryDescription"/>
</div>
<c:if test="${empty cat.categoryName}"><input type="submit" value="Add"/></c:if>
<c:if test="${not empty cat.categoryName}"><input type="submit" value="Update"/></c:if>
</spring:form>


<c:if test="${not empty categoryList}">

<table border="1">
<tr><td style="color:white;">categoryId</td>
<td style="color:white;">categoryName</td>
<td style="color:white;">categoryDesc</td>

<td style="color:white;">Edit</td>
<td style="color:white;">delete</td>
</tr>
<c:forEach items="${categoryList}" var="cate">
<tr>
<td style="color:white;">${cate.categoryId}</td>
<td style="color:white;">${cate.categoryName}</td>
<td style="color:white;">${cate.categoryDescription}</td>

<td><a href="editCategory/${cate.categoryId}">Edit</a></td>

<td><a href="deleteCategory/${cate.categoryId}">delete</a></td>
</tr>


</c:forEach>
</table>

</c:if>


</body>
</html>