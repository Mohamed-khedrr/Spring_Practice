<%--
  Created by IntelliJ IDEA.
  User: khedr
  Date: 1/9/2024
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Age Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">--%>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css"/>">

</head>
<body class="container">


<h1>Calc Age Form</h1>

<form:form class="my-4" action="processAge" modelAttribute="userModel">
    <form:input type="date" class="form-control w-25 my-3" placeholder="Year" path="birthDate"/>
    <form:input type="text" class="form-control w-25" placeholder="name"  path="name"/>

    <form:button class="btn btn-success text-light my-4" type="submit" >Submit</form:button>
</form:form>


</body>
</html>
