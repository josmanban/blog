package blog

class CategoriaTreeMenuTagLib {

    def treeMenu ={ attrs,body ->
    	
    	out << render(template:"/categoriaTreeMenuTagLib/treeMenu",encoding:'html', model:[categorias:Categoria.findAllByPadre(null)])
    }
}
