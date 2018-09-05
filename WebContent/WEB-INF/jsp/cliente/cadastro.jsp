<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<tag:template title="Cadastro de Cliente">
	<jsp:body>
		<h1>Cadastro de Cliente</h1>
		<c:url value="/cliente/cadastrar" var="action" />
		<form:form action="${action }" method="post" commandName="cliente">
			<div class="form-group">
				<form:label path="razaoSocial">Razão Social</form:label>
				<form:input path="razaoSocial" cssClass="form-control" />
				<form:errors path="razaoSocial" />	
			</div>
			<div class="form-group">
				<form:label path="nomeFantasia">Nome Fantasia</form:label>
				<form:input path="nomeFantasia" cssClass="form-control" />
				<form:errors path="nomeFantasia" />	
			</div>
			<div class="custom-control custom-radio custom-control-inline mt-2 mb-3">
			  <input class="form-check-input" type="radio" name="tipoDocumento" value="cnpj" id="documentoCnpj">
			  <label class="form-check-label" for="documentoCnpj">CNPJ</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input class="form-check-input" type="radio" name="tipoDocumento" value="cpf" id="documentoCpf">
			  <label class="form-check-label" for="documentoCpf">CPF</label>
			</div>
			<div class="form-group">
				<form:label path="cnpjCpf" id="cnpjCpfLabel">CNPJ/CPF</form:label>
				<form:input path="cnpjCpf" id="cnpjCpf" cssClass="form-control" />
				<form:errors path="cnpjCpf" />		
			</div>
			<div class="form-group">
				<form:label path="telefone">Telefone</form:label>
				<form:input id="telefone" path="telefone" cssClass="form-control" />
				<form:errors path="telefone" />		
			</div>
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form:form>
	</jsp:body>
</tag:template>

