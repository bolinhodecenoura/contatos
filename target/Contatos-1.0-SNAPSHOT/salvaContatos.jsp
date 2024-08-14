<%-- 
    Document   : salvaContatos
    Created on : 8 de ago. de 2024, 13:34:39
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.salvaContatos"%>

<%
    int id = request.getParameter("id");
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    int tempoPreparo = Integer.parseInt(request.getParameter("tempoPreparo"));
    int porcoes = Integer.parseInt(request.getParameter("porcoes"));
    String ingredientes = request.getParameter("ingredientes");
    String preparo = request.getParameter("preparo");

    Contatos contato = new Contatos();
    Nome.setNome(nome);
    receita.setDescricao(descricao);
    receita.setTempoPreparo(tempoPreparo);
    receita.setPorcoes(porcoes);
    receita.setIngredientes(ingredientes);
    receita.setPreparo(preparo);

    boolean sucesso = receita.salvar();

    if (sucesso) {
        out.println("Receita salva com sucesso!");
    } else {
        out.println("Erro ao salvar receita.");
    }
%>

<p><a href="cadastraReceita.jsp">Voltar</a></p>