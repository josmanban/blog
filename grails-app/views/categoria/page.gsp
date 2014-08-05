<%@ page import="blog.Post" %>
<!DOCTYPE html>

<%@ page import="blog.Categoria" %>
<%@ page import="blog.Post" %>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code:'categoria.label',default:'Categoria')}"/>
	<title>
	${categoria.nombre}
	</title>
</head>
<body>
<h1>
	${categoria.nombre}
</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

<g:render template="/post/createFromPage"/>

<div id="postTree">
<g:render template="/post/tree" model="[posts:posts]" id="treePost"/>
</div>
<div id="replyPostFormModal" class="modal fade bs-example-modal-lg">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">Responder post</h4>
      </div>
      <div class="modal-body">
      <form id="replyPostForm" class="form-horizontal" method="POST" action="<g:createLink controller='post' action='createFromPage' />">
        <g:render template="/post/form"/>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">cancelar</button>
        <button type="button" id="replyPostFormSubmit" class="btn btn-primary">Responder</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>

window.onload=function(){
	
	desactivarSubmit("createFromPageFormSubmit",addPost);	
	document.getElementById('replyPostFormSubmit').onclick=function(){		
		addPost('replyPostForm');
		$('#replyPostFormModal').modal('hide');
		};
	recargarEventos();
};

function recargarEventos(){
	var botones= document.getElementsByClassName('postReply')	;
	for(var i=0;i<botones.length;i++){
		botones[i].onclick=function(){
			//alert(this.getAttribute('data-padre'));
			document.getElementById('replyPostForm').idPadre.value=this.getAttribute('data-padre');		
			$('#replyPostFormModal').modal('show');
		}
	}
}


function getFormData(data){
	if(data.length < 2)
		return;
	var form= document.getElementById(data[0]);		
	datos= {};	
	for(var i=1; i < data.length;i++){
		//alert(data[i]+"\n"+form.elements[data[i]].value);
		datos[data[i]] = form.elements[data[i]].value;		
	}
	return datos;
}


function recargarSeccion(idDiv,url,ok,onError){
	$('#'+idDiv).load(url,function(){
	if(ok)
		ok();
		}).hide().fadeIn(500);;
	
}

function mensaje(){
	alert('jose');
}


function addPost(idForm){
	var data;
	if(idForm)		{
		data= getFormData([ idForm, 'idCategoria',
		'idPadre', 'autor', 'titulo',
		'email', 'img', 'texto']);
		}	else{
		data= getFormData(['createFromPageForm', 'idCategoria',
		'idPadre', 'autor', 'titulo',
		'email', 'img', 'texto']);		
	}
		
	var request=$.ajax({
		url: "<g:createLink controller='post' action='createFromPage'/>",
		data:data,
		type:'POST',
		dataType:'json'
	});	

	request.done(function(msg){
		var urlReload="<g:createLink controller='post' action='tree' params="[idCategoria:categoria.id]"/>";
		recargarSeccion("postTree",urlReload,recargarEventos);

	});
	request.fail(function(){
		alert('todo mal');
	});
}

function desactivarSubmit(id,fn){
	/*var submits= document.getElementById(id);	
	for(var i=0;i<submits.length;i++){				
		submits[i].onclick=function(e){		
		if(fn)	
			fn();
		e.preventDefault();
		}
	}*/

	document.getElementById(id).onclick=function(e){
		if(fn)
			fn();
		e.preventDefault();
	}
}

</script>
</body>
</html>
