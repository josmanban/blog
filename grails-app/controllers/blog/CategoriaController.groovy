package blog

class CategoriaController extends ControllerFunctions {

    def administracionService
    def blogService

    def index() {
        render(view: 'index',model:[categorias:Categoria.list(),estados:Estado.list()])
    }

    def create(){
        render(view:'create',model:[categorias:Categoria.list(),estados:Estado.list()])
    }
    
    def edit(){
        Categoria Categoria= Categoria.get(params.id)       
        render(view:'edit',model:[categoria:Categoria,id:params.id,categorias:Categoria.list(),estados:Estado.list()])       
    }

    def update(){       
        administracionService.updateCategoria(params.id,params.nombre,params.descripcion,
            params.idCategoriaPadre,params.idEstado)
        render(view:'show',model:[categoria:Categoria.get(params.id)])
    }

    def save(){        
        Categoria categoria=administracionService.createCategoria(params.nombre,params.descripcion,
            params.idCategoriaPadre,params.idEstado);        
        render(view:'show',model:[categoria:categoria])
    }

    def show(){
        render(view:'show',model:[categoria:Categoria.get(params.id)])           
    }

    def page(){
        render(view: 'page',model:[
            categoria:Categoria.get(params.id),
            posts:blogService.listPost(params.id,null)
            ])
    }

    def treeMenu(){
        render(view:'/categoria/treeMenu',model:[categorias:Categoria.findAllByPadre(null)])
    }

}
