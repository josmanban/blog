<%@ page import="blog.Estado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<table class="table table-hover table-striped">
<thead>
						<g:sortableColumn property="id" title="${message(code: 'categoria.id.label', default: 'id')}" />

						<g:sortableColumn property="nombre" title="${message(code: 'categoria.nombre.label', default: 'nombre')}" />
						

						<g:sortableColumn property="ambito" title="${message(code: 'categoria.descripcion.label', default: 'descripcion')}" />

						<g:sortableColumn property="categoriaPadre" title="${message(code: 'categoria.categoriaPadre.label', default: 'categoria padre')}" />

						<g:sortableColumn property="descripcion" title="${message(code: 'categoria.estado.label', default: 'estado')}" />
						<td>Accion<td>

</thead>
<tbody>
<g:each in="${categorias}" var="categoria">
<tr>
	<td>${categoria.id}</td>
	<td>${categoria.nombre}</td>	
	<td>${categoria.descripcion}</td>	
	<td>${categoria.padre?.nombre}</td>	
	<td>${categoria.estado?.nombre}</td>	
	<td>
		<g:link action="edit" id="${categoria.id}" class="btn btn-success"><g:message code="default.button.edit.label" default="Editar" /></g:link>
		<g:link action="show" id="${categoria.id}" class="btn btn-default"><g:message code="default.button.show.label" default="Ver" /></g:link>
		<g:link action="delete" id="${categoria.id}" class="btn btn-danger"><g:message code="default.delete.label" default="Eliminar" /></g:link>	
	</td>
</tr>
</g:each>
<tbody>
</table>

</body>
