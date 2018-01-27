<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix = "caelum" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona Contatos</title>
<link href = "css/jquery.css" rel="stylesheet">
<script src = "js/jquery.js"></script>
<script src = "js/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<h1>Adiciona Contatos</h1>
	<hr/><br/>
	<form action = "adicionaContato">
	<label for = "nome"> Nome: </label>
	<input type = "text" name="nome" />
	<br/><br/>
	<label for = "email"> E-mail:</label>
	<input type = "text" name="email"/>
	<br/><br/>
	<label for = "endereco"> Endereco:</label>
	<input type = "text" name="endereco"/>
	<br/><br/>
	<label for = "dataNascimento"> Data de Nascimento:</label>
	<caelum:campoData id="dataNascimento"/>
	<br/><br/>
	<input type = "submit" value = "Gravar">
	</form>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>