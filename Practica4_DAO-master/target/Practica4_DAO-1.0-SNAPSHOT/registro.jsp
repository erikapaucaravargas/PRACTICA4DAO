<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    Aviso aviso = (Aviso) request.getAttribute("aviso");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NUEVO REGISTRO</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            body {
                background-color: #121212;
                color: #ffffff;
            }
            .container {
                max-width: 600px;
                margin-top: 50px;
                background-color: #1f1f1f;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }
            h1 {
                text-align: center;
                margin-bottom: 20px;
                color: #ffffff;
            }
            .form-group label {
                color: #ffffff;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-control {
                background-color: #333;
                border: 1px solid #444;
                color: #ffffff;
            }
            .form-control:focus {
                background-color: #444;
                color: #ffffff;
            }
            .action {
                text-align: right;
            }
            .btn {
                margin-left: 10px;
            }
            .btn-primary {
                background-color: #0069d9;
                border-color: #0062cc;
            }
            .btn-secondary {
                background-color: #6c757d;
                border-color: #5a6268;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Nueva Entrada</h1>
            <form action="AvisoController" method="post">
                <input type="hidden" name="id" value="${aviso.id}" />
                <div class="form-group">
                    <label for="fecha">Fecha</label>
                    <input type="date" id="fecha" name="fecha" class="form-control" value="${aviso.fecha}" required>
                </div>
                <div class="form-group">
                    <label for="titulo">Título</label>
                    <textarea id="titulo" name="titulo" class="form-control" rows="2" required>${aviso.titulo}</textarea>
                </div>
                <div class="form-group">
                    <label for="contenido">Contenido</label>
                    <textarea id="contenido" name="contenido" class="form-control" rows="5" required>${aviso.contenido}</textarea>
                </div>
                <div class="action">
                    <input type="submit" class="btn btn-primary" value="Enviar" />
                    <a href="AvisoController?action=list" class="btn btn-secondary">Volver</a>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2Q
