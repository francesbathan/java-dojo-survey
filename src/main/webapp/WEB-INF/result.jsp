<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
       	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dojo Survey</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
		<div class="container">
			<h2>Submitted Info</h2>
			<p>Your Name: <span><c:out value="${name}"/></span> </p>
			<p>Dojo Location: <span><c:out value="${location}"/></span> </p>
			<p>Favorite Language: <span><c:out value="${language}"/></span> </p>
			<p>Comments: <span><c:out value="${comments}"/></span> </p>
		</div>
</body>
</html>