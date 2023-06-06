# Taller 7 - Java Web (Ampliación del modelo Repository Pattern)
# JAVA_AVANZADO
***
Proyecto diseñado y creado especialmente para la elaboración de trabajos y actividades realizadas en clase.
## Tabla de Contenidos
* [Descripción del proyecto](#descripción-del-proyecto)
* [Estado del proyecto](#estado-del-proyecto)
* [Características del proyecto](Características-del-proyecto)
* [Tecnologías utilizadas](#tecnologías-utilizadas)
* [Contacto](#contacto)

### Descripción
***
* EL proyecto se basa principalmente en una serie de actividades o aplicativos web propuestos en la clase JAVA AVANZADO, todo con el fin de mejorar y ayudar a nuestro aprendizaje. Ya completamos con 5 aplicativos web, un index, un login, un formulario de registro,un formulario de registro para Categorías y un formulario de registro para Productos, cada uno con sus estilos correspondientes. Además de contar con la conexión a base de datos y sus respectivos beans, en este caso DBConnection, User, Category, y Product, sin dejar atrás el Repository Pattern de cada uno de ellos, con su respectiva intefaz Repository, y la clase que hace la implementación de esta. Agregando aquí, los servlets de cada una de nuestros beans, en este caso UserRegisterServlet, CategoryRegisterServlet y ProductRegisterServlet.

### Estado del proyecto
***
:construction: Proyecto en construcción (sujeto a nuevas actualizaciones) :construction:

### Características
***
#### Index
***
* En principio utilizamos la etiqueta <!DOCTYPE html> para dejar en claro que el arcrivo a continuacion es un tipo documento, y nos permite identificar en el navegador que tipo de html es. 'html lang="es"' Con ella especificamos el leguaje de nuestra interfaz, a continuación sigue nuestra estructura HTML, dentro de la etiqueta 'head' colocamos las etiquetas: <meta charset> esta nos aytudará a aceptar todo tipo de caracteres especiales, el siguiente 'meta' nos brinda la opción y caraterística de que nuestra interfaz sea responsive. 'title' esta eqieuta le dara el título a nuestra ventana de navegación, y por último colocamos un 'link' el cual nos da la conexióon y nos permite acceder a las bibliotecas de BOOSTRAP.

* Dentro de la etiqueta <body> colocamos:
'div class="container"' este será nuestro contenedor principal, dentro de esta etiqueta se encuentra 'header' '/header' es la cabecera principal de nuestra interfaz, 'nav' '/nav' es la barra de navegación de nuestra interfaz. Dentro de la etiqueta 'section' va el contenido principal de nuestra página en este caso en primer lugar tenemos un "img" con la imágen que deseamos, acompañada por dos títulos donde nos indica que tenemos varias opciones para ingresar. A continuación tenemos 4 botones, donde cada uno de ellos nos llevará a la interfaz que indique.
  
#### Login
***
* En principio utilizamos la etiqueta <!DOCTYPE html> para dejar en claro que el arcrivo a continuacion es un tipo documento, y nos permite identificar en el navegador que tipo de html es. 'html lang="es"' Con ella especificamos el leguaje de nuestra interfaz, a continuación sigue nuestra estructura HTML, dentro de la etiqueta 'head' colocamos las etiquetas: <meta charset> esta nos aytudará a aceptar todo tipo de caracteres especiales, el siguiente 'meta' nos brinda la opción y caraterística de que nuestra interfaz sea responsive. 'title' esta eqieuta le dara el título a nuestra ventana de navegación,  y por último colocamos un 'link' el cual nos da la conexióon y nos permite acceder a las bibliotecas de BOOSTRAP.
  
* Dentro de la etiqueta <body> colocamos:
'div class="container"' este será nuestro contenedor principal, dentro de esta etiqueta se encuentra 'header' '/header' es la cabecera principal de nuestra interfaz, 'nav' '/nav' es la barra de navegación de nuestra interfaz. Dentro de la etiqueta 'section' va el contenido principal de nuestra página en este caso en primer lugar tenemos un "h1" con el título del formulario, luego abrimos la etiqueta 'form' la que contiene un action="" (acción que hará con la información) y un method="" (es el método por el cual enviará los datos). Dentro del form abriremos todas los 'label' con las caraterísticas necesarias, y los 'input' cada uno con su tipo, id, nombre, la cualidad de es requerido y su pattern si es necesario, y seguido de esto tendremos el <bottom> tipo submit y el nombre que deseamos. Una vez cerrada la etiqueta del form, y del section, tenemos la etiqueta 'script' con el link que permite acceder a las bibliotecas de javaScript alojadas en Boostrap. Se cierra el '/body', y se agrega la etiqueta del 'footer''/footer'' (pie de página de la interfaz), y cerramos las etiquetas faltantes.
  
* Especialmente funciona para el logeado de una usuario, además de ser acompañado por la opción de resgistrarse en caso tal de no tener un usuario.


#### Formulario de registro
***
* Cuenta con las mismas etiquetas del Login, salvo que contiene más 'input' y 'label' debido a que son más campos de registro. Especialmente funciona para el registro de un usuario nuevo, solicitando datos como: Nombre, Apellido, Correo y Contraseña.

#### Formulario de registro para Categorías
***
* Cuenta con las mismas etiquetas del Login, salvo que aquí solo contiene un input, para almacenar el nombre de la categoría. Especialmente funciona para el registro de una categoría nueva.

#### Formulario de registro para Productos
***
* Cuenta con las mismas etiquetas del Login, contiene tres inputs, para almacenar el nombre del producto, su valor, y la categoría a la que pertenece. Especialmente funciona para el registro de un producto nuevo.

#### ConnectionPool
***
* Con ayuda de esta tenemos acceso a nuestra base de datos.
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/98fb7068-2977-4b60-95a8-e21943745bc0)
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/d00a354b-f420-4ee1-8ac1-09577e8a2580)

#### UseConnectionPool
***
 *Con ayuda de esta podemos propar nuestra conección a la base de datos..
![image](https://user-images.githubusercontent.com/128272265/236643851-7bdd8373-c995-4d44-8fc1-0937ade2b3e8.png)

#### Encrypt - Decrypt MySQL
***
  ![image](https://user-images.githubusercontent.com/128272265/236377952-9ffa7436-6f2d-440e-a727-7798f84fe514.png)

#### UserRepositoryImpl
***
  * Sobre escribimos los métodos de la interfaz "Repository" para allí poder modificar, crear o realizar cualquier tipo de acción con la información de nuestra tabla users_tbl.
  
#### CategoryRepositoryImpl
***
  * Sobre escribimos los métodos de la interfaz "Repository" para allí poder modificar, crear o realizar cualquier tipo de acción conla información de nuestra tabla user_tbl.

#### ProductRepositoryImpl
***
  * Sobre escribimos los métodos de la interfaz "Repository" para allí poder modificar, crear o realizar cualquier tipo de acción conla información de nuestra tabla user_tbl.

#### UserRegisterServlet
***
  * Recibe los datos enviados a traves del formulario de registrar Usuario, y llama el método necesario para el almacenamiento y la creación de un nuevo registro con estos.
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/a69cedc6-a5f0-4484-ae1b-2588ca2484de)
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/8deb3eb4-5314-4e91-ae2c-d0b926a7173e)

#### CategoryRegisterServlet
***
  * Recibe los datos enviados a traves del formulario de registrar Categoría, y llama el método necesario para el almacenamiento y la creación de un nuevo registro con estos.
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/fe46fdc5-212d-4d5e-a8ec-98a3aa8cec1c)

#### ProductRegisterServlet
***
  * Recibe los datos enviados a traves del formulario de registrar Producto, y llama el método necesario para el almacenamiento y la creación de un nuevo registro con estos.
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/5b52ab31-1b79-4972-a424-283e3cbcc269)
![image](https://github.com/DayanaVarg/Taller7-JavaAvanzado/assets/128272265/6818e022-3e6a-43d5-b4b1-89bcec4c88f6)
  
### Tecnologías usuadas
***
* [JAKARTA EE]
* [IntelliJ IDEA 2023.1] 
* [MySQL 8.0.33]
  
### Contacto
***
davargas777@soy.sena.edu.co


