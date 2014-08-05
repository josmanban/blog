package blog

class Rol {

    static constraints = {
    }

    String nombre
    String descripcion
    

    def Rol(){}
    def Rol(String nombre , String descripcion){
    	this.nombre= nombre
    	this.descripcion=descripcion
    }
}
