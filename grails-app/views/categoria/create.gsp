<%@ page import="blog.Estado" %>
<%@ page import="blog.Categoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<g:form action="save" method="POST" name="save" class="form-horizontal">
	<g:render template="form"/>
	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    	<g:actionSubmit class="btn btn-primary" action="save" value="Registrar" />
	</div></div>
</g:form>

	</body>
</html>