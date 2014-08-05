package blog

import grails.transaction.Transactional

@Transactional
class BlogService {

    def serviceMethod() {

    }

    void createPostFromPage(String autor,String email,
        String titulo,String texto,String idCategoria,
        String idPadre,String img
        ){
        Estado estado= Estado.findByNombreLike('habilitado')
        Categoria categoria= Categoria.get(idCategoria)
        Post padre=Post.get(idPadre)        
        Post post
        if(padre){            
        post= new Post(autor,email,titulo,texto,
            categoria,padre,img,estado)}
        else{
        post= new Post(autor,email,titulo,texto,
            categoria,img,estado)
        }
        post.save(flush:true)
        post
    }

    void updatePost(){

    }

    //agregar index,offset
    //si esta setetado idPostPadre devuelve un arbol?!
    def listPost(String idCategoria,String idPostPadre){
     Categoria categoria= Categoria.get(idCategoria)   
     Post padre= Post.get(idPostPadre)
     /*def posts= (idPostPadre!=null&&idPostPadre!='null') ? 
     Post.findAllByCategoriaAndPadre(categoria,padre,[sort: "fechaHoraCreacion", order: "desc"]):  
     Post.findAllByCategoria(categoria, [sort: "fechaHoraCreacion", order: "desc"])*/
     def posts= Post.findAllByCategoriaAndPadre(categoria,padre,[sort: "fechaHoraCreacion", order: "desc"])
     posts
    }
}
