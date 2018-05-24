<%@ include file="/WEB-INF/jsp/init.jsp" %>

<p>
	<b><liferay-ui:message key="ExampleTwo.caption"/></b>
</p>

<portlet:renderURL var="clickView">
	<portlet:param name="action" value="showForm"/>
</portlet:renderURL>

<a href="<%= clickView.toString%>" >Form</a>