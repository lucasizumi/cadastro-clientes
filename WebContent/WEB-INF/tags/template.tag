<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="title" required="true" %>

<%@ attribute name="scripts" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title }</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  		<a class="navbar-brand" href="<c:url value="/"></c:url>">ControleClientes</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
  		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		  <ul class="navbar-nav mr-auto">
		    <li class="nav-item dropdown">
		      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		        Clientes
		      </a>
		      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		        <a class="dropdown-item" href="<c:url value="/cliente/cadastrar"></c:url>">Cadastrar</a>
		        <a class="dropdown-item" href="<c:url value="/cliente/listar"></c:url>">Consultar</a>
		      </div>
		    </li>
		  </ul> 
		</div>
	</nav>
	<div class="container mt-5">
		<jsp:doBody/>
	</div>
	
	<footer class="card-footer text-muted mt-5">
		<p class="text-center">Todos os direitos reservados</p>
	</footer>
	
<script type="text/javascript"
src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script type="text/javascript"
src="<c:url value="/resources/js/bootstrap.min.js"/>">
</script>	
<script type="text/javascript" src="<c:url value="/resources/js/jquery.mask.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/masks.js"/>"></script>



<jsp:invoke fragment="scripts"></jsp:invoke>

</body>
</html>






