# Culturama

Culturama es una aplicación móvil desarrollada en Flutter que busca promover la educación y preservación cultural.
Permite a los usuarios registrarse con distintos roles (estudiante, docente o persona normal) y explorar varias secciones de contenido cultural:

Trivias y Quizzes → jugar, crear y competir en rankings.

Recetas típicas → subir recetas propias o explorar recetas predeterminadas.

Juegos tradicionales → tutoriales y explicaciones.

Mapa interactivo → explorar tradiciones por departamento con geolocalización.

Favoritos → guardar trivias, recetas, juegos y lugares.

## Funcionalidades principales
Funcionalidades principales

Autenticación y usuarios

Registro e inicio de sesión con correo, contraseña y nombre de usuario.

Roles disponibles:

Docente → crea trivias, copia trivias predeterminadas, evalúa estudiantes y accede a rankings privados.

Estudiante → juega trivias de docentes y predeterminadas, participa en rankings globales y privados.

Normal → accede libremente a las trivias y quizzes predeterminadas, recetas, juegos y mapa cultural.

Trivias y Quizzes

Creación y resolución de trivias/quizzes.

Trivias predeterminadas con opción de copiarlas para uso docente.

Rankings:

Global → todos los usuarios.

Privado docente → solo con los estudiantes que participan.

Recetas

Recetas subidas por los usuarios.

Recetas predeterminadas de la comida típica nicaragüense.

Manual de juegos

. Tutoriales para juegos tradicionales.

Mapa interactivo

. Burbujas con información cultural/tradicional de cada departamento.

. Cada departamento puede tener múltiples historias, festivales o eventos.

. Uso de GeoJSON para almacenar coordenadas.

. Función de búsqueda: al buscar una tradición/evento, el mapa centra la vista en ese lugar.

Favoritos

. Cada ventana tiene su propio apartado de favoritos:

.. Trivias/quizzes.

.. Recetas.

.. Juegos.

.. Mapa interactivo.

## Base de datos
MongoDB
Colecciones principales:

... usuarios → información de registro, roles, fecha.

... trivias_quizzes → trivias creadas o predeterminadas.

... recetas → recetas predeterminadas y aportadas por usuarios.

... juegos → juegos tradicionales con tutoriales.

... mapa → burbujas culturales con coordenadas (GeoJSON).

... favoritos → relación entre usuarios y sus elementos guardados.

## Tecnologias utilizadas
Flutter (Dart) → desarrollo móvil multiplataforma.

MongoDB → base de datos NoSQL.

GeoJSON → manejo de coordenadas para el mapa interactivo.
## Futuras mejoras

Notificaciones push para nuevos eventos o trivias.

Comentarios y valoraciones en recetas, juegos y trivias.

Estadísticas avanzadas en los rankings.
## Installation

Clona el repositorio
```bash
git clone https://github.com/BlackByte/culturama_app.git
```
Instala dependencias
```bash
flutter pub get
```
Ejecuta
```bash
flutter run
```
## Autor

Proyecto desarrollado por BlackByte como parte de un sistema educativo y cultural para la difusión de tradiciones nicaragüenses.