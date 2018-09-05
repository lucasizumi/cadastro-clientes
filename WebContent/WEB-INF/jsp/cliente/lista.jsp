<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<tag:template title="Lista de Clientes">
	<h1>Lista de Clientes</h1>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	
	<c:url value="/cliente/buscar" var="action"/>
	<form:form action="${action }" method="get">
		<div class="input-group mb-3">
			<input type="text" name="razaoSocial" placeholder="Razão Social" class="form-control"/>
			<div class="input-group-append">
    			<input type="submit" class="btn btn-outline-secondary" value="Buscar"/>
  			</div>
		</div>
	</form:form>
	
	<table class="table">
		<tr>
			<th>Razão Social</th>
			<th>Nome Fantasia</th>
			<th>CNPJ/CPF</th>
			<th>Telefone</th>
			<th>Status</th>
		</tr>
		<c:forEach items="${clientes }" var="c">
			<tr>
				<td>${c.razaoSocial }</td>
				<td>${c.nomeFantasia }</td>
				<td>${c.cnpjCpf }</td>
				<td>${c.telefone }</td>
				<td>${(c.status == true) ? 'Ativo' : 'Inativo'}</td>
			</tr>
		</c:forEach>
	</table>

</tag:template>