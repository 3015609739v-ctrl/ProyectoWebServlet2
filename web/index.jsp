<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Calcular Edad</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 25px;
            border-radius: 15px;
            text-align: center;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
        }

        .btn {
            background: green;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Calcular Edad</h2>

    <form action="MiServlet" method="post">

        <input type="text" name="nombre"
               placeholder="Tu nombre"
               value="${sessionScope.nombre}" required>

        <input type="number" name="anio"
               placeholder="Año de nacimiento"
               value="${sessionScope.anio}" required>

        <input type="submit" value="Calcular Edad" class="btn">
    </form>
</div>

</body>
</html>