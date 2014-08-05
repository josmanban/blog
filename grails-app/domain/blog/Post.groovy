package blog

class Post {

    static constraints = {       
    }

    //Post padre
    static hasMany= [hijos:Post] 
    static belongsTo= [padre:Post]
    String texto
    String titulo
    String email
    //Usuario autor
    String autor
    Estado estado
    int numVisitas
    Categoria categoria
    String img
    Date fechaHoraCreacion





    def Post(){}

    def Post(String autor,String email,String titulo,
        String texto,Categoria categoria){
        this.autor=autor
        this.titulo=titulo
        this.email=email
        this.texto=texto
        this.categoria=categoria       
        this.numVisitas=0
        this.fechaHoraCreacion=new Date()
    }

    def Post(String autor,String email,String titulo,
        String texto,Categoria categoria,Post padre){
        this(autor,email,titulo,texto,categoria)
        this.padre=padre    }

    

    def Post(String autor,String email,String titulo,
        String texto,Categoria categoria,Post padre,
        String img){
        this(autor,email,titulo,texto,categoria,padre)
      	this.img=img
    }

    def Post(String autor,String email,String titulo,
        String texto,Categoria categoria,Post padre,
        String img,Estado estado){
    	this(autor,email,titulo,texto,categoria,
            padre,img)
    	this.estado=estado
    }

    def Post(String autor,String email,String titulo,
        String texto,Categoria categoria,
        String img,Estado estado){
        this(autor,email,titulo,texto,categoria)
        this.img=img       
        this.padre=null 
        this.estado=estado
    }

}
