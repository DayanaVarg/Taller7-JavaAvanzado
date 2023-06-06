
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
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <!-- bootstrap css- -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- custom css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="text-center">
<div class="d-flex">
    <header></header>
    <nav></nav>
    <section>
        <!-- registrer form -->
        <main class="form-register">
                <img class="mb-4" src="img/iniciar.png" alt="SIGCE" width="100">
                <h4 class="text-secondary">SIGCE</h4>
                <h1 class="h5 mb-3 fw-normal">Acciones posibles de realizar</h1>
                <div id="register">
                    <a href="jsp/signin.jsp"><button type="submit" class="w-100 btn btn-lg btn-outline-dark">Iniciar Sesión</button></a><br><br>
                    <a href="jsp/register.jsp"><button type="submit" class="w-100 btn btn-lg btn-outline-dark">Registrarse</button></a><br><br>
                    <a href="jsp/categories.jsp"><button type="submit" class="w-100 btn btn-lg btn-outline-dark">Registrar Categoría</button></a><br><br>
                    <a href="jsp/products.jsp"><button type="submit" class="w-100 btn btn-lg btn-outline-dark">Registrar Producto</button></a><br>
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
