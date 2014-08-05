<%@ page import="blog.Categoria" %>
<%@ page import="blog.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<dl class="dl-horizontal">
	<dt>Nombre:</dt>
	<dd>${categoria?.nombre}</dd>
	<dt>Descripcion:</dt>
	<dd>${categoria?.descripcion}</dd>
	<dt>Categoria padre:</dt>
	<dd>${categoria?.padre?.nombre}</dd>
	<dt>Estado:</dt>
	<dd>${categoria?.estado?.nombre}</dd>
</dl>
</body>
</html>