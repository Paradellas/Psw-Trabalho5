<%@page import="java.util.List"%>
<%@page import="com.mycompany.trabalho2.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body{
            background-color: #4e555b
            }
        </style>
        <title>Trabalho-3</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <button class="btn btn-outline-success" onclick="location.href = 'http://localhost:8084/Trabalho3/inicio.jsp'" type="button">Home</button>
            </button>
        </nav>
        <table class="table table-striped table-dark" style="width:100%" >
            <thead>
              <tr>
                <th scope="col"><center>Disciplina</center></th>
                <th scope="col"><center>Nome</center></th>
                <th scope="col"><center>Frequência</center></th>
                <th scope="col"><center>Média normal</center></th>
                <th scope="col"><center>Média final</center></th>
                <th scope="col"><center>Situação</center></th>
              </tr>
            </thead>
            <c:if test="${not empty lista3}">
                <c:forEach items="${lista3}" var="b" >
                    <tr>
                        <td><center>${b.disciplina}</center></td>
                        <td><center>${b.nome}</center></td>
                        <td><center>${b.frequencia}</center></td>
                        <td><center>${b.notaNormal}</center></td>
                        <td><center>${b.notaFinal}</center></td>
                        <td><center>${b.situacao}</center></td>
                    </tr>
                </c:forEach>
            </c:if>
        </table><br>
        <center><input type="submit" value="Novo formulário" class="btn btn-outline-success col-md-4" onclick="location.href = 'http://localhost:8084/Trabalho3/inicio.jsp'"></center> 
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js" ></script>    
    </body>
</html> 