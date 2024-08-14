<%-- 
    Document   : contatosInserir
    Created on : 7 de ago. de 2024, 16:48:42
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Receita</title>
</head>
<body>
    <h2>Inserir contato</h2>
    <form action="salvaContatos.jsp" method="post">
        Nome do novo contato: <input type="text" name="nome" required><br>
        Número do novo contato: <textarea name="numeroContato" required></textarea><br>
        Idade do nov contato: <input type="number" name="idadeContato" required><br>
        Id do contato: <textarea name="contatoId" required></textarea><br>
        <input type="submit" value="Salvar Contato">
    </form>
</body>
</html>

<%--
          Idade do contato: <input type="number" name="tempoPreparo" required><br>

--%>