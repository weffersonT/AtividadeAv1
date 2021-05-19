<%@page import="Suporte.Tabelas" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Suporte.Model" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcula Idade</title>
    </head>
    <body>
        <h2>Calcular Idade</h2>
        <div id="div_idade">
        <form action="comparaIdade.jsp" method="get" target="result">
            <h3> Pessoa 1 </h3><br/>
            Nome: <input type="text" name="nome"> <br/>
            Idade: <input type="text" name="idade"> <br/>
            
            <h3> Pessoa 2 </h3><br/>
            Nome: <input type="text" name="nome2"> <br/>
            Idade: <input type="text" name="idade2"> <br/>
            
            <h3> Pessoa 3 </h3><br/>
            Nome: <input type="text" name="nome3"> <br/>
            Idade: <input type="text" name="idade3"> <br/>
            
            <input type="submit" name="enviar" value="Comparar"
                   
        </form>
        </div>
        <br/><br/>
        
        <div id="div_resultado">
            <iframe name="result" width="300" height="200"></iframe>
        </div>
                   
        
         <%
            
                //Paciente p = new Paciente("Daniel", "123.456.789-12", 30);
                
                List<Model> m = new ArrayList<Model>();
                     
                m.add(new Model("Daniel", 30));
                m.add(new Model("João", 40));
                m.add(new Model("Maria", 50));
                m.add(new Model("guilherme", 19));
                
                
                for( Model valor : m) {
                    out.print("------------------------------- <br>");
                    out.print("Nome " + valor.getNome()+ "<br>");
                    out.print("idade: " + valor.getIdade() + "<br>");
                }
                             
                //out.println("Nome = " + p.getNome() + "<br>");
                //out.println(p.getCpf());
                //out.println(p.getIdade());
                
        %>
    </body>
</html>