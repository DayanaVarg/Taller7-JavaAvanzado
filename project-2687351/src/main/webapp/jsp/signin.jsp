<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <! -- METADATA -->
    <meta charset="UTF-8">
    <meta name="author" content="Dayana Vargas">
    <meta name="description" content="Formulario de inicio de sesión para la plataforma SIGCE.">
    <meta name="keywords" content="login, inicio de sesión, ingresar">
    <meta name="viewport" content="width=device=width, initial-scale=1.0">
    <!-- title -->
    <title>Iniciar Sesión SIGCE</title>
    <!-- favicoon-->
    <link rel="icon" type="image/x-icon" href="../img/logo.png">
    <!-- bootstrap css- -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- custom css -->
    <link rel="stylesheet" href="../css/style.css">
</head>
<body class="text-center">
<div class="d-flex">
    <header></header>
    <nav></nav>
    <section>
    <!-- login form -->
    <main class="form-login">
        <form action="" method="post">
            <img class="mb-4" src="../img/iniciar.png" alt="SIGCE" width="100">
            <h4 class="text-secondary">SIGCE</h4>
            <h1 class="h5 mb-3 fw-normal">Ingresar</h1>

                    <div class="form-floating">
                    <input type="text" id="user" name="user" class="form-control" placeholder="Ingrese su usuario" required autofocus
                           pattern="[A-Za-z ]{2,40}">
                    <label for="user">Usuario</label>
                    </div><br>

                    <div class="form-floating">
                    <input type="password"  id="password" name="password" class="form-control"  placeholder="Ingrese su contraseña" required
                           pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*" >

                        <label  for="password" >Contraseña</label><br>
                    </div>

                    <button type="submit" class="w-100 btn btn-lg btn-outline-dark">Enviar</button>

                    <div id="signin">
                        <a href="./register.jsp">Registrarse</a>
                    </div>


        </form>
    </main>
    </section>
    <!-- Bootstrap script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
    <%!
        public String displayDate(){
            SimpleDateFormat dateFormat =new SimpleDateFormat("YYYY");
            Date date = Calendar.getInstance().getTime();
            return dateFormat.format(date);
        }
    %>
</div>
</body>
<footer>
    <p class="mt-3 mb-3 text-muted">Todos los derechos reservados SIGCE © <%=displayDate()%></p>
</footer>
</html>
