<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>) request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTADO DE SEMINARIOS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            body {
                background-color: #121212;
                color: #e0e0e0;
            }
            .header, .footer {
                background-color: #1f1f1f;
                color: #ffffff;
                padding: 10px 0;
                text-align: center;
            }
            .datos {
                max-width: 400px;
                margin: 20px auto;
                border: 1px solid #444;
                padding: 20px;
                background-color: #1f1f1f;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }
            .container article {
                background-color: #1f1f1f;
                padding: 20px;
                margin-bottom: 20px;
                border: 1px solid #444;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }
            .container h1 {
                color: #ffffff;
            }
            .container .text-muted {
                color: #b0b0b0;
            }
            .action a {
                margin-left: 10px;
            }
            .btn-success {
                background-color: #28a745;
                border-color: #28a745;
            }
            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }
            .btn-danger {
                background-color: #dc3545;
                border-color: #dc3545;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1>LISTADO DE SEMINARIOS</h1>
        </div>

        <div class="datos text-center">
            <p>PRACTICA 4 TEM-742</p>
            <p>NOMBRE: ERIKA PAUCARA VARGAS</p>
            <p>CARNET: 11103824 LP</p>
        </div>

        <div class="container">
            <h1 class="text-center">Blog de Tecnología</h1>
            <p class="text-end">
                <a class="btn btn-success" href="AvisoController?action=add">Nueva Entrada</a>
            </p>
            
            <c:forEach var="item" items="${avisos}">
                <article>
                    <h2>${item.titulo}</h2>
                    <p class="text-muted">Fecha: ${item.fecha}</p>
                    <p>${item.contenido}</p>
                    <div class="text-end action">
                        <a class="btn btn-primary" href="AvisoController?action=edit&id=${item.id}">Editar</a>
                        <a class="btn btn-danger" href="AvisoController?action=delete&id=${item.id}">Eliminar</a>
                    </div>
                </article>
            </c:forEach>
        </div>

        <div class="footer">
            <p>© 2024 Blog de Tecnología</p>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
