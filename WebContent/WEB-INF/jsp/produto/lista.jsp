<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Produtos</title>
</head>
<body>
<h1>Produtos</h1>

<table>
	<tr>
		<th>Id</th>
		<th>Nome</th>
		<th>Preço</th>
		<th>Data Início de Venda</th>
	</tr>
	<c:forEach items="${produtoList}" var="produto">
		<tr>
			<td>${produto.id }</td>
			<td>${produto.nome}</td>
			<td>${produto.preco}</td>
			<td><fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataInicioVenda.time }"/></td>
			<td><a href="<c:url value="/produto/altera"/>?produto.id=${produto.id }">Alterar</a></td>
			<td><a href="<c:url value="/produto/remove"/>?produto.id=${produto.id }">Remover</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>