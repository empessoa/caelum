<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bem Vindo</title>
</head>
<body>
	<%--Comentario em JSP aqui: nossa primeira pagina JSP --%>
	<%String mensagem =  "Bem vindo ao sistema de agenda do fj-21";%>
	<%out.println(mensagem);%>
	<br/>
	<%String desenvolvido = "Desenvolvido por Elias M.P" ;%>
	<%= desenvolvido %>
	<br/>
	<%System.out.println("Tudo foi executado!"); %>

</body>
</html>