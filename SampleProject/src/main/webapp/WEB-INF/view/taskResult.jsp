<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body class="container d-flex align-center justify-center flex-column row-gap-3 mt-4">
<h1 class="text-danger text-center">Task Result</h1>
<h2>Hello ${taskModel.userName}</h2>
<h2>Your Salary is ${taskModel.salary}</h2>
<h2>Language u know is  ${taskModel.language}</h2>
<h2>Operating Systems u can use are: </h2>
<c:forEach var="selectedOs" items="${taskModel.os}">
  <li class="fs-5">${selectedOs}</li>
</c:forEach>
</body>
</html>
