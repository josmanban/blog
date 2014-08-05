package blog

class Categoria {

    static constraints = {
    }
    String nombre
    String descripcion
    Estado estado
    static belongsTo=[padre:Categoria]
    static hasMany=[hijos:Categoria]

    def Categoria(){}
    def Categoria(String nombre,String descripcion,Categoria categoriaPadre,Estado estado){
    	this.nombre=nombre
    	this.descripcion=descripcion
        this.padre=categoriaPadre
    	this.estado=estado    	        
    }

    
}
