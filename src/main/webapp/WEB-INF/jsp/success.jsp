<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/init.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
    <h3>Form submitted successfully</h3>
</div>
 
<div>Nombre: ${successModel.name}</div>
 
<div>Edad: ${successModel.age}</div>

<portlet:renderURL var="clickTry">
	<portlet:param name="action" value="berni"/>
</portlet:renderURL>

<a href="<%=clickTry.toString()%>" >Try</a>

</body>
</html>