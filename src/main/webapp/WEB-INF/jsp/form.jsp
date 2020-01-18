<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<portlet:actionURL var="submitFormURL" name="handleCustomer"/>
<form:form name="persona" method="post" modelAttribute="persona" action="<%=submitFormURL.toString() %>">
	<br/>
	<div class="form-group">
		<label for="name"><form:label path="name">Name</form:label></label>
    	<form:input cssClass="form-control" path="name"></form:input>
	</div>
    <table style="margin-left:80px">
        <tbody>
            <tr>
              
            </tr>
            <tr>
                <td><form:label path="age">Age</form:label></td>
                <td><form:input path="age"></form:input></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Submit Form">
                </td>
            </tr>
        </tbody>
    </table>
</form:form>
