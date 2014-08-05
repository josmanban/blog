package blog
import grails.converters.JSON

class PostController extends ControllerFunctions{

	def blogService
	
    def index(){ }

    def create(){




        }

    def createFromPage(){
    	Post post= blogService.createPostFromPage(
    		params.autor,params.email,params.titulo,
            params.texto,params.idCategoria,params.idPadre,
            params.img
    		)    

        if(isAjax(request))
        {
           render post as JSON
        }
        else{
        redirect(
            controller:'categoria',
            action:'page',
            params:[
            id:params.idCategoria,            
            ])
        }
     }


    def edit(){}

   

   def tree(){
    def categoria= params.idCategoria!=null&&params.idCategoria!='null'?Categoria.get(params.idCategoria):null
    render(template:"/post/tree",model:[posts:Post.findAllByPadreAndCategoria(null,categoria,[sort: "fechaHoraCreacion", order: "desc"])])

   }

    def page(){}

    def show(){}

    def save(){}

    def update(){}
}
