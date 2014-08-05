package blog

class Estado {

    static constraints = {
    }
    String nombre
    String descripcion
    String ambito

    def Estado(){}
    def Estado(String nombre, String descripcion,String ambito){
    	this.nombre=nombre
    	this.descripcion=descripcion
    	this.ambito=ambito
    }

}
