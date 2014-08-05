<%@ page import="blog.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<table class="table table-hover table-striped">
<thead>
						<g:sortableColumn property="id" title="${message(code: 'estado.id.label', default: 'id')}" />

						<g:sortableColumn property="nombre" title="${message(code: 'estado.nombre.label', default: 'nombre')}" />

						<g:sortableColumn property="descripcion" title="${message(code: 'estado.nombre.label', default: 'nombre')}" />

						<g:sortableColumn property="ambito" title="${message(code: 'estado.descripcion.label', default: 'descripcion')}" />
						<td>Accion<td>

</thead>
<tbody>
<g:each in="${estados}" var="estado">
<tr>
	<td>${estado.id}</td>
	<td>${estado.nombre}</td>	
	<td>${estado.descripcion}</td>	
	<td>${estado.ambito}</td>	
	<td>
		<g:link action="edit" id="${estado.id}" class="btn btn-success"><g:message code="default.button.edit.label" default="Editar" /></g:link>
		<g:link action="show" id="${estado.id}" class="btn btn-default"><g:message code="default.button.show.label" default="Ver" /></g:link>
		<g:link action="delete" id="${estado.id}" class="btn btn-danger"><g:message code="default.delete.label" default="Eliminar" /></g:link>	
	</td>
</tr>
</g:each>
<tbody>
</table>

</body>
