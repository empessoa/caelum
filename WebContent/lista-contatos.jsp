<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TAGLIBS</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"></jsp:useBean>
	<table>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				<td>
					<!--
					<c:if test = "${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>						
					</c:if>
					<c:if test = "${empty contato.email}">
						E-mail nao informado						
					</c:if>
					-->
					<c:choose >
						<c:when test = "${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:when test = "${empty contato.email}">
							E-mail nao informado
						</c:when>	
						<c:otherwise>Nenhuma das anteriores!</c:otherwise>		
					</c:choose>
				</td>
				<td>${contato.endereco}</td> 
				<td>
					<fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy"/>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>