<ul class="">
<g:each in="${categorias}" var="categoria">
<g:render template="/categoria/treeMenuItem" model="[categoria:categoria]" />
<g:render template="/categoria/treeMenu" model="[categorias:categoria.hijos]" />
</g:each>
</ul>

