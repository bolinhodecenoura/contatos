<%-- 
    Document   : tratamentoErros
    Created on : 9 de ago. de 2024, 14:46:33 
    Author     : Aluno
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tratamento De Erros</title>
    </head>
    <body>
        <%
        int a = 10;
        int b = 0;
        int dividido=0;
       
        try { //tenta fazer e pode dar erro
         dividido = a/b;
         out.print("<br> Divisão: " + dividido);
            }
            catch (ArithmeticException e) { //se der erro
            dividido = 0;
            out.print("<br>Erro: " + e.getMessage());
            }
            finally { //opcional, executa sempre ao finalizar
            out.print("<br> Tentei dividir. " + dividido);
            }
           
        String numeroComoString = "123abc";
        try {
            // Tentamos converter a string em um inteiro
            int numero = Integer.parseInt(numeroComoString);
            System.out.println("<br>Número convertido: " + numero);
        } catch (NumberFormatException e) { //se der erro pega o tipo 
            // Captura e trata a exceção se a string não puder ser convertida
            out.print("<br>Erro: A string não é um número válido.");
            e.printStackTrace(); //mostra no log de erros
            out.print("<br>Erro: " + e.getMessage()); //mostra na tela
        }
        
 
        try {
            int[] numeros = new int[5];
            out.println(numeros[10]); // Isso lança a exceção ArrayIndexOutOfBoundsException
        } catch (Exception e) {
            // Captura qualquer exceção que herde de Exception
            out.println("<br>Erro capturado: " + e.getMessage());
            e.printStackTrace(); // Exibe detalhes da exceção
        } finally {
            // Este bloco é sempre executado, independentemente da ocorrência de uma exceção
            out.println("<br>Bloco finally executado.");
        }
 
        
        %>
    </body>
</html>
