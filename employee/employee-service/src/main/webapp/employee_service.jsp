<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <%@ page isELIgnored="false" %> --%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- http://stackoverflow.com/questions/22670323/values-not-displayed-in-jsp -->
	<h1>
		<strong>Employee ID:&nbsp;&nbsp;&nbsp;</strong>${employee.id}
	</h1>
	<h1>
		<strong>First Name:&nbsp;&nbsp;&nbsp;</strong>${employee.firstName}
	</h1>
	<h1>
		<strong>Last Name:&nbsp;&nbsp;&nbsp;</strong>${employee.lastName}
	</h1>
	<h1>
		<strong>Company:&nbsp;&nbsp;&nbsp;</strong>${employee.company}
	</h1>
</body>
</html>