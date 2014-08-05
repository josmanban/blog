<div>
	<g:hiddenField name="id" value="${estado?.id}"/>
</div>
<div class="form-group">	
	<label class="col-sm-2 control-label">Nombre:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nombre" value="${estado?.nombre}"/>
	</div>
</div>
<div class="form-group">	
	<label class="control-label col-sm-2" >Descripcion:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="descripcion" value="${estado?.descripcion}"/>
	</div>
</div>
<div class="form-group">	
	<label class="control-label col-sm-2" >Ambito:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="ambito" value="${estado?.ambito}"/>
	</div>
</div>

