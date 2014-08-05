<ul class="">
<g:each in="${categorias}" var="categoria">
<li>
<g:link controller="categoria" action="page" id="${categoria.id}">${categoria.nombre}</g:link>
<g:render template="/categoriaTreeMenuTagLib/treeMenu" model="[categorias:categoria.hijos]" />
</li>
</g:each>
</ul>

