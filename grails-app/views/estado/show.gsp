<%@ page import="blog.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<dl class="dl-horizontal">
	<dt>Nombre:</dt>
	<dd>${estado?.nombre}</dd>
	<dt>Descripcion:</dt>
	<dd>${estado?.descripcion}</dd>
	<dt>Ambito:</dt>
	<dd>${estado?.ambito}</dd>
</dl>
</body>
</html>