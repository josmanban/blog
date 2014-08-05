package blog

class Usuario {

    static constraints = {

    }
    String nombre
    String email
    String password
    Perfil perfil
    Estado estado

    static hasmany= [roles:Rol]
    static embedded = ['perfil']

    def Usuario(){

    }

    def Usuario(String nombre,String email,String password){
    	this.nombre=nombre
    	this.email=email
    	this.password=password
    }

    def Usuario(String nombre,String email,String password,Estado estado){
    	this(nombre,email,password)
    	this.estado=estado
    }

    def Usuario(String nombre,String email,String password,Perfil perfil,Estado estado){
    	this(nombre,email,password,estado)
    	this.perfil=perfil
    	
    }

    //def Usuario(String nombre,String email,String password, Perfil perfil,Estado estado, Roles)

    public boolean esAdministrador(){

    }

    public boolean esPublicador(){}

    public boolean esNormal(){}

}

class Perfil{
    String avatar
    String descripcion
}
