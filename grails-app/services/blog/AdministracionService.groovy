package blog

import grails.transaction.Transactional

@Transactional
class AdministracionService {

    boolean transactional=true

    def serviceMethod() {

    }

    Usuario createUsuario(String nombre,String email,String password){
    	Usuario usuario=new Usuario(nombre,email,password)
    	usuario.save(flus:true)
    	usuario
    }

	void updateUsuario(Usuario usuario,String nombre,String email,String password)
    {
    	usuario.nombre=nombre
    	usuario.email=email
    	usuario.password=password
    	usuario.save(flush:true)
    }

    Usuario login(String nombre,String password){
    	
    	Usuario usuario= Usuario.findByNombreLikeAndPasswordLike(nombre,password)
    	return usuario
    }


    Estado createEstado(String nombre,String descripcion,String ambito){
        Estado estado= new Estado(nombre,descripcion,ambito)
        estado.save()
        estado
    }

    void updateEstado(int id,String nombre,String descripcion,String ambito){
        Estado estado= Estado.get(id)
        if(estado!=null){
            estado.nombre=nombre
            estado.descripcion=descripcion
            estado.ambito=ambito
            
            estado.save(flush:true)
        }
    }

    Categoria createCategoria(String nombre,String descripcion,String idCategoriaPadre, String idEstado){
        //try{
        Estado estado= Estado.get(idEstado)        
        Categoria categoriaPadre=idCategoriaPadre!=null&&idCategoriaPadre!='null'?Categoria.get(idCategoriaPadre):null
        Categoria categoria= new Categoria(nombre,descripcion,categoriaPadre,estado)
        categoria.save(flush:true)       
        categoria
        //}catch(Exception ex){
          //  throw ex
        //}
    }

    void updateCategoria(String id,String nombre,String descripcion,String idCategoriaPadre,String idEstado){
        //try{
            Categoria categoria= Categoria.get(id)
        //if(categoria!=null){      
            categoria.nombre=nombre
            categoria.descripcion=descripcion
            Estado estado= Estado.get(idEstado)
            categoria.padre=idCategoriaPadre!=null&&idCategoriaPadre!='null'?Categoria.get(idCategoriaPadre):null
            categoria.estado=estado
            categoria.save(flush:true)

        //}
        //}catch(Exception ex){
          //  throw ex
        //}
    }


    




}
