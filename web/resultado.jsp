<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(135deg, #89f7fe, #66a6ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
        }

        .btn {
            margin-top: 20px;
            padding: 10px;
            background: green;
            color: white;
            text-decoration: none;
            display: inline-block;
        }
    </style>
</head>
<body>

<div class="card">
    <h2>Resultado</h2>

    <p>
        Hola <strong>${nombre}</strong>,<br>
        tu edad es: <strong>${edad}</strong> años 🎉
    </p>

    <a href="index.jsp" class="btn">Volver</a>
   <%
    java.util.ArrayList<String[]> historial = 
        (java.util.ArrayList<String[]>) session.getAttribute("historial");
%>

<h3>Historial de búsquedas 📋</h3>

<table border="1" style="margin: auto; border-collapse: collapse;">
    <tr>
        <th>Nombre</th>
        <th>Año</th>
        <th>Edad</th>
    </tr>

<%
    if (historial != null) {
        for (String[] dato : historial) {
%>
    <tr>
        <td><%= dato[0] %></td>
        <td><%= dato[1] %></td>
        <td><%= dato[2] %></td>
    </tr>
<%
        }
    }
%>

</table>
</div>

</body>
</html>