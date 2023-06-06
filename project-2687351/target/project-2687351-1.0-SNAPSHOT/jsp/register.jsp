
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- METADATA -->
    <meta charset="UTF-8">
    <meta name="author" content="Dayana Vargas">
    <meta name="description" content="Formulario de registro para la plataforma SIGCE">
    <meta name="keywords" content="registro de usuario, formulario de registro, crear cuneta, registro en línea">
    <meta name="viewport" content="width=device=width, initial-scale=1.0">
    <!-- title -->
    <title>Registrarse SIGCE</title>
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
        <!-- registrer form -->
        <main class="form-register">
            <form action="../users_register" method="post">
                <img class="mb-4" src="../img/iniciar.png" alt="SIGCE" width="100">
                <h4 class="text-secondary">SIGCE</h4>
                <h1 class="h5 mb-3 fw-normal">Registrarse</h1>

                <div class="form-floating">
                    <input type="text" id="user_firstname" name="user_firstname" class="form-control" placeholder="Ingrese su nombre" required autofocus
                           pattern="[A-Za-z ]{2,40}">
                    <label for="user_firstname">Nombre</label>
                </div><br>

                <div class="form-floating">
                    <input type="text" id="user_lastname" name="user_lastname" class="form-control" placeholder="Ingrese sus apellidos" required
                           pattern="[A-Za-z ]{2,40}">
                    <label for="user_lastname">Apellido</label>
                </div><br>

                <div class="form-floating">
                    <input type="email" id="user_email" name="user_email" class="form-control" placeholder="Ingrese su correo" required
                           pattern="{60}">
                    <label for="user_email">Correo electrónico</label>
                </div><br>

                <div class="form-floating">
                    <input type="password"  id="user_password" name="user_password" class="form-control"  placeholder="Ingrese su contraseña" required
                           pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*" >

                    <label  for="user_password" >Contraseña</label><br>
                </div>

                <button type="submit" class="w-100 btn btn-lg btn-outline-dark">Registrarse</button>

                <div id="register">
                    <a href="./signin.jsp">Iniciar Sesión</a>
                </div>


            </form>
        </main>
    </section>
    <!-- Bootstrap script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>

</div>
</body>
<footer>
    <p class="mt-3 mb-3 text-muted">Todos los derechos reservados SIGCE © </p>
</footer>
</html>
