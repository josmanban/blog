package blog

class UsuarioController extends ControllerFunctions{

	def administracionService

    def index() { }

    def create(){
    	render(view:'create')
    }

    def save(){
    	Usuario usuario=administracionService.createUsuario(params.nombre,params.email,params.password)

    	render "${usuario.nombre}-${usuario.email}"
    }
}
