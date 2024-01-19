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
<body class="container d-flex align-center justify-center flex-column row-gap-3">
<h1>Task Form</h1>
<form:form modelAttribute="taskModel" action="processTask" class="d-flex flex-column row-gap-2">

    <form:input  type="text" class="form-control  " placeholder="Username "  path="userName"/>
    <form:input type="password" class="form-control  " path="password" placeholder="Password" ></form:input>
    <form:input path="salary" type="number" class="form-control" placeholder="Salary"></form:input>
    <form:input type="text" class="form-control " path="email" placeholder="Email" ></form:input>
    
    <form:select path="country" class="form-select " placeholder="Email">
        <form:option value="Egypt" ></form:option>
        <form:option value="UK"></form:option>
        <form:option value="US"></form:option>
    </form:select>
<div class="d-flex gap-4 my-3">

    <div class="d-flex gap-1">
        <input:radiobutton path="language" value="html" class="form-check-input" label="HTML"></input:radiobutton>
    </div>
    <div class="d-flex gap-2">
        <input:radiobutton path="language" value="css" class="form-check-input" label="CSS"></input:radiobutton>
    </div>
    <div class="d-flex gap-2">
        <input:radiobutton path="language" value="js" class="form-check-input" label="JS"></input:radiobutton>
    </div>
</div>

    <div class="d-flex gap-4 ">

        <div class="d-flex gap-1">
            <input:checkbox path="os" value="html" class="form-check-input" label="Windows"></input:checkbox>
        </div>
        <div class="d-flex gap-2">
            <input:checkbox path="os" value="css" class="form-check-input" label="Linux"></input:checkbox>
        </div>
        <div class="d-flex gap-2">
            <input:checkbox path="os" value="js" class="form-check-input" label="Mac"></input:checkbox>
        </div>
    </div>

    <form:button class="btn btn-success mt-4">Submit</form:button>

</form:form>
</body>
</html>
