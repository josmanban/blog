  <li class=" media alert alert-info">
   <h5> 
   <span class="label label-primary">${post.autor}</span> 
   <span class="label label-success">${post.fechaHoraCreacion}</span> 
   <span class="label label-default">Nº ${post.id}</span>     
   <span class="label label-info">${post.titulo}</span> 
   </h5>   
    <a class="pull-left" href="#">
      <img class="media-object" src="${post.img}" alt="...">
    </a>
    <div class="media-body">
      ${post.texto}
    </div>
    <div>      
      <input type="button" class="postReply btn btn-default pull-right" value="responder" data-padre="${post.id}"/>
    </div>
  </li>
