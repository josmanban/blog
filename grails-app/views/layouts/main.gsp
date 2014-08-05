<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><g:layoutTitle default="Libre blog"/></title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="${resource(file: 'bootstrap.min.css',base : 'http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css')}" />
    <style>
    body{
      font-size: small      
    }
        #wrapper{
           padding:2em 0 0 0 ;

        }    
    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
  </head>
  <body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav> 
  <div class="container" id="wrapper" >  
    <div class="row">
	<div id="main" class="col-sm-9">	
		<g:layoutBody/>		
	</div>
	<aside class="col-sm-3" >
			<div class="well" role="navigation">
				<h3>Tablones</h3>
      <g:treeMenu />
			</div>
      <div class="well">
        <h3>Categorias</h3>
        <ul class="nav nav-pills nav-stacked">
          <li>
            <g:link controller="categoria" action="create">Nuevo</g:link>
          </li>
          <li>
            <g:link controller="categoria" action="index">Ver/Editar</g:link>
          </li>        
        </ul>
      </div>
      <div class="well">
        <h3>Estados</h3>
        <ul class="nav nav-pills nav-stacked">
          <li>
            <g:link controller="estado" action="create">Nuevo</g:link>
          </li>
          <li>
            <g:link controller="estado" action="index">Ver/Editar</g:link>
          </li>        
        </ul>
      </div>

	</aside>
  </div>
</div>
	<footer></footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->    
    

    <script type="text/javascript" src="${resource(file: 'jquery.min.js',base : 'http://ajax.googleapis.com/ajax/libs/jquery/1.11.1')}"  ></script>

    <script type="text/javascript" src="${resource(file: 'bootstrap.min.js',base : 'http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js')}"  ></script>

    
  </body>
</html>