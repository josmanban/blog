<%@ page import="blog.Post" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code:'post.label',default:'Post')}"/>
	<title>
	<g:message code="default.create.label" args="[entityName]" />
	</title>
</head>
<body>
<h1>
<g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
</h1>
<g:render template="createForm"/>
</body>
</html>