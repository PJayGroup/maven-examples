<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Reports</title>
</head>
<body>
	<!-- http://stackoverflow.com/questions/22670323/values-not-displayed-in-jsp -->
	<table>
		<tr bgcolor="#00BFFF">
			<td><strong>Employee ID</strong></td>
			<td><strong>First Name</strong></td>
			<td><strong>Last Name</strong></td>
			<td><strong>Company</strong></td>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.firstName}</td>
				<td>${employee.lastName}</td>
				<td>${employee.company}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>