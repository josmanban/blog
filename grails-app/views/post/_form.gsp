<div>
	<g:hiddenField name="id" value="${post?.id}"/>
</div>
<g:if test="${post==null|| post.padre==null}" >
<div>
	<g:hiddenField name="idPadre" value="-1"/>
</div>
</g:if>
<g:else>
<div>
	<g:hiddenField name="idPadre" value="${post?.padre?.id}"/>
</div>
</g:else>
<div>
<g:if test="${categoria!=null}">
	<g:hiddenField name="idCategoria" value="${categoria.id}"/>
</g:if>	
<g:else>
	<g:hiddenField name="idCategoria" value="${post?.categoria?.id}"/>
</g:else>
</div>
<div class="form-group">	
	<label class="col-sm-2 control-label">Autor:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="autor" value="${post?.autor}"/>
	</div>
</div>

<div class="form-group">	
	<label class="col-sm-2 control-label">email:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="email" value="${post?.email}"/>
	</div>
</div>

<div class="form-group">	
	<label class="col-sm-2 control-label">Titulo:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="titulo" value="${post?.titulo}"/>
	</div>
</div>
<div class="form-group">	
	<label class="control-label col-sm-2" >Texto:</label>
	<div class="col-sm-10">
		<g:textArea rows="5" cols="40" class="form-control" name="texto" value="${post?.texto}"/>
	</div>
</div>

<div class="form-group">	
	<label class="control-label col-sm-2" >Imagen:</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="img" value="${post?.imagen}"/>
	</div>	
</div>



