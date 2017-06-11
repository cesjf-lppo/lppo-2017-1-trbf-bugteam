<%-- 
    Document   : listar-usuarios
    Created on : 11/06/2017, 11:17:56
    Author     : Bruna Alves
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de usuários</title>
    </head>
    <body>
        <h1>Lista de usuários</h1>
         <table>
            <tr>
                <th>Id</th>
                <th>Nome Completo</th>
                <th>Email</th>
                <th>Ações</th>
            </tr>
            <c:forEach var="usuario" items="${usuarios}">
            <tr>
                <td><a href="editar.html?id=${usuario.id}">${usuario.id}</a></td>
                <td>${usuario.nomecompleto}</td>
                <td>${usuario.email}</td>
                <td><a href="excluir.html?id=${usuario.id}">&#128465;</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
