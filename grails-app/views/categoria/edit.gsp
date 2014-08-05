<%@ page import="blog.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

<g:form class="form-horizontal" action="update" method="POST" name="update">
	<g:render template="form"/>
	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">		
	<g:actionSubmit class="btn btn-primary" action="update" value="Guardar cambios" />
	</div>
	</div>
</g:form>
</body>
</html>