package blog

class EstadoController {

	def administracionService

    def index() {
        render(view: 'index',model:[estados:Estado.list()])
    }

    def create(){
    	render(view:'create')
    }
    
    def edit(){
    	Estado estado= Estado.get(params.id)    	
    	render(view:'edit',model:[estado:estado,id:params.id])    	
    }

    def update(){
    	administracionService.updateEstado(Integer.parseInt(params.id),params.nombre,params.descripcion,params.ambito)
    	render(view:'show',model:[estado:Estado.get(params.id)])
    }

    def save(){
		Estado estado=administracionService.createEstado(params.nombre,params.descripcion,params.ambito);    	

		render(view:'show',model:[estado:estado])
    }

    def show(){
        render(view:'show',model:[estado:Estado.get(params.id)])           
    }

}
