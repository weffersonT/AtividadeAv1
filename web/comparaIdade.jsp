<%@page import="Suporte.Model" %>
<%@page import="Suporte.Tabelas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Comparando as idades</title>
    </head>
    <body>
        <h1>Resultado!</h1>
        
       <%
            try {
                String nome_txt, idade_txt;
                float idade;
                String nome;
                //  Receber dados externos
                nome_txt = request.getParameter("nome");
                idade_txt = request.getParameter("idade");
                //  Converter string para float
                idade = Float.parseFloat(idade_txt);
                //  Calcular e exibir IMC

                //out.println("IMC = " + imc + ".<br>");
                int idadeMaisVelha = 0;
                int idadeMaisNova= 99;

                for(int i = 0; i < 3; i ++){
                        if(pessoas.get(i).getIdade() < idadeMaisNova){
                            idadeMaisNova = pessoas.get(i).getIdade();
                            String pessoaMaisNovaNome = pessoas.get(i).getNome();
                            String pessoaMaisVelhaNome = pessoas.get(i).getNome();
                            out.println("O nome da pessoa mais velha é "+ pessoaMaisVelhaNome+", que tem "+idadeMaisVelha+" anos");
                            out.println("O nome da pessoa mais nova é "+ pessoaMaisNovaNome+", que tem "+idadeMaisNova+" anos");
                        }if(pessoas.get(i).getIdade() > idadeMaisVelha){
                            idadeMaisVelha = pessoas.get(i).getIdade();
                            String pessoaMaisVelhaNome = pessoas.get(i).getNome();
                             String pessoaMaisNovaNome = pessoas.get(i).getNome();
                            out.println("O nome da pessoa mais velha é "+ pessoaMaisVelhaNome+", que tem "+idadeMaisVelha+" anos");
                            out.println("O nome da pessoa mais nova é "+ pessoaMaisNovaNome+", que tem "+idadeMaisNova+" anos");
                        }
                    }


               
                
            } catch(NumberFormatException e){
                out.print("Erro.<br>Digite apenas números!");
            }
        %>
    </body>
</html>
