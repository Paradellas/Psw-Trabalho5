<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="cmp" uri="WEB-INF/tagLib.tld"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Trabalho-3</title>
        <style>
            body{
                background-color: #4e555b
            }
        </style>
    </head>
    <body>
        <div class="pos-f-t">
            <div class="collapse" id="navbarToggleExternalContent">
                <div class="bg-dark p-4">
                    <button class="btn btn-outline-success" onclick="location.href = 'http://localhost:8084/Trabalho3/formPsw.jsp'" type="button">Programação de Software Web</button>
                    <button class="btn btn-outline-success" onclick="location.href = 'http://localhost:8084/Trabalho3/formOea.jsp'" type="button">Organização e Estrutura de Arquivos</button>
                    <button class="btn btn-outline-success" onclick="location.href = 'http://localhost:8084/Trabalho3/formAps.jsp'" type="button">Análise e Projeto de Sistemas</button>
                </div>
            </div>
            <nav class="navbar navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> <a text class="navbar-brand" href="#">Menu</a>
                </button>
        </div><br>   
        <center><form action="situacaoServlet" method="POST">
            <div class="form-group col-md-4">
                <label for="exampleInputEmail1"><font color="FFFFFF">Aluno</font></label>
                <input name="aluno" value="${aluno}" type="text" class="form-control" id="Alunoform" aria-describedby="emailHelp" placeholder="Digite o nome do aluno">
            </div>
            <div class="form-group col-md-4">
                <label for="exampleInputEmail1"><font color="FFFFFF">Frequência</font></label>
                <input name="frequencia" value="${freq}" type="text" class="form-control" id="Frequênciaform" aria-describedby="emailHelp" placeholder="Digite a frequência de 0 à 100">
                <small id="emailHelp" class="form-text text-muted"><font color="FF0000">${erroFreq}</font></small>
            </div>
            <div class="form-group col-md-4">
                <label for="exampleInputEmail1"><font color="FFFFFF">Média normal</font></label>
                <input name="mediaNormal" value="${mn}" type="text" class="form-control" id="mediaNormalform" aria-describedby="emailHelp" placeholder="Digite a média normal de 0 à 10">
                <small id="emailHelp" class="form-text text-muted"><font color="FF0000">${erroMn}</font></small>
            </div>
            <div class="form-group col-md-4">
                <label for="exampleInputEmail1"><font color="FFFFFF">Média Final</font></label>
                <input name="mediaFinal" value="${mf}" type="text" class="form-control" id="mediaFinalform" aria-describedby="emailHelp" placeholder="Digite a média final de 0 à 10">
                <small id="emailHelp" class="form-text text-muted"><font color="FF0000">${erroMf}</font></small>
                </div>
            <div class="form-group col-md-4">
                <label  for="inlineFormCustomSelect"><font color="FFFFFF">Disciplina</font></label>
                <cmp:TagPersonalizada perfilSelecionado="${disc}"/><font color="FF0000">${erroDisc}</font><br><br>
                <button class="btn btn-outline-success col-md-4" type="submit" >Enviar</button>
            </div>
            
            <h3><font color="FF0000">${Fatalerro}</font></h3>
            <p class="mt-5 mb-3 text-muted">&copy; Vinicius Paradellas - 2018</p>
        </form></center>
    
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>