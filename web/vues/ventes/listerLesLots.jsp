<%-- 
    Document   : listerLesLots
    Created on : 22 sept. 2020, 08:49:21
    Author     : sio2
--%>

<%@page import="modele.Lot"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Liste des lots </title>
    </head>
    
    <body>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="../index.html">
            <img src="../vues/img/Logo2.png" width="30" height="30" class="d-inline-block align-top" alt="ilg">
            Equida
        </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../index.html">Accueil <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../ServletVentes/listerLesVentes">Lister les ventes</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Ajouter
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="../ServletClient/ajouterClient">Ajouter Client</a>
          <a class="dropdown-item" href="../ServletCheval/ajouterCheval">Ajouter Cheval</a>
          <a class="dropdown-item" href="../ServletAdmin/ajouterTypeCheval">Ajouter Type Cheval</a>
          <a class="dropdown-item" href="../ServletAdmin/ajouterCategVente">Ajouter Cat??gorie</a>
          <a class="dropdown-item" href="../ServletAdmin/ajouterPays">Ajouter Pays</a>
          <a class="dropdown-item" href="../ServletAdmin/ajouterLieux">Ajouter Lieux</a>
        </div>
      </li>
    </ul>
   <form class="form-inline my-2 my-lg-0">
      <ul class="form-inline my-2 my-lg-0">
       <a type="button" class="btn btn-outline-primary" href="../inscription.html">S'inscrire </a> &nbsp;
       <a type="button" class="btn btn-outline-success" href="../connexion.html">Connexion </a>
       
      </ul>
</nav>
        </br>
        
        <div class="container">
        <h1>LISTE DES LOTS</h1>
         <%
        ArrayList<Lot> lesLots = (ArrayList)request.getAttribute("pLesLots");
        %>
        <table  class="table table-bordered table-striped table-condensed">  
            <thead>
                <tr>             
                    <th>id</th>
                    <th>Prix de depart</th> 
                    <th>Nom du cheval</th>
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                    for(int i = 0; i < lesLots.size();i++)
                    {
                        
                        Lot unLot = lesLots.get(i);
                        out.println("<tr><td>");
                        out.println(unLot.getId());
                        out.println("</a></td>");

                        out.println("<td>");
                        out.println(unLot.getPrixDepart());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unLot.getUnCheval().getNom());
                        out.println("</td>");
                        
                        out.println("<td><a href ='../ServletVentes/listerLesChevaux?codeLot="+ unLot.getId()+ "'>");
                        out.println("Liste d'information sur le cheval");
                        out.println("</td>");
                        
                    }
                    %>
                </tr>
            </tbody>
        </table>
        </div>
    </body>
</html>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>