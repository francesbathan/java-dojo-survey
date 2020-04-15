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
		<form method="POST" action="/submit">
		<div>
			<label>Your Name:</label>
			<input name="name"/>
		</div>
		<div>
			<label>Dojo Location:</label>
			<select name="location">
				<option value="San Jose">San Jose</option>
				<option value="Burbank">Burbank</option>
				<option value="Seattle">Seattle</option>
				<option value="Oakland">Oakland</option>
				<option value="Boise">Boise</option>
				<option value="Arlington">Arlington</option>
				<option value="Chicago">Chicago</option>
				<option value="Dallas">Dallas</option>
				<option value="Orange County">Orange County</option>
				<option value="Tulsa">Tulsa</option>
				<option value="Online">Online</option>
			</select>
		</div>
		<div>
			<label>Favorite language:</label>
			<select name="language">
				<option value="Python">Python</option>
				<option value="JavaScript">JavaScript</option>
				<option value="Java">Java</option>
				<option value="C#">C#</option>
				<option value="Ruby">Ruby on Rails</option>
			</select>
		</div>
		<div>
			<label>Comments:</label>
			<textarea name="comments"></textarea>
		</div>
		<button type="submit" value="submit">Submit</button>
		</form>
	</div>
</body>
</html>