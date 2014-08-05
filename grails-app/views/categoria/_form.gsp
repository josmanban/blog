<div>
	<g:hiddenField name="id" value="${categoria?.id}"/>
</div>
<div class="form-group">	
	<label class="col-sm-2 control-label">Nombre:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nombre" value="${categoria?.nombre}"/>
	</div>
</div>
<div class="form-group">	
	<label class="control-label col-sm-2" >Descripcion:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="descripcion" value="${categoria?.descripcion}"/>
	</div>
</div>

<div class="form-group">	
	<label class="control-label col-sm-2" >Categoria padre:</label>
	<div class="col-sm-10">
	<g:select name="idCategoriaPadre"
          from="${categorias}"
          noSelection="${['null':'Select One...']}"
          optionKey="id"
          optionValue="nombre"
          value="${categoria?.padre?.id}" />	
	</div>
</div>

<div class="form-group">	
	<label class="control-label col-sm-2" >Estado:</label>
	<div class="col-sm-10">
	<g:select name="idEstado"
          from="${estados}"
          optionKey="id"
          optionValue="nombre"
          value="${categoria?.estado?.id}" />	
	</div>
</div>


