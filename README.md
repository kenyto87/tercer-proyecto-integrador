# Documentación de API - Trailerfix

Esta documentación describe cómo utilizar la API trailerfix, que permite leer, crear, actualizar y eliminar catálogos de series y películas.

## Tabla de Contenidos

- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Endpoint](#endpoint)
- [Ejemplos](#ejemplos)

## Requisitos

- Node
- Express
- Sequelize
- Mysql2

## Instalación

1.  Clona el repositorio:

    ```bash
    git clone https://github.com/tu-usuario/

    ```

    cd Trailerflix
    npm install

2.  Configurar las variables de entorno creando un archivo .env y configurando las siguientes variables:

        DB_SCHEMA=trailerflix
        DB_USER=root
        DB_PASSWORD=
        DB_HOST =localhost

3.  Iniciar:
    npm run start

## Estructura del Proyecto

    Trailerflix/
    ├── src/
    │ ├── config/
    │ ├── controllers/
    │ ├── models/
    │ ├── routes/
    │ └── ...
    ├── .env
    ├── package.json
    ├── README.md
    └── server.js
    └── ...

## Endpoint

| Método | Endpoint                       | Descripción                                                |
| ------ | ------------------------------ | ---------------------------------------------------------- |
| GET    | /categorias                    | Obtiene la lista de todas las categorías.                  |
| GET    | /catalogo                      | Obtiene la lista de todo el catalogo .                     |
| GET    | /catalogo/:id                  | Filtra por el código de la película/serie.                 |
| GET    | /catalogo/nombre/:nombre       | Filtra por nombre o parte del nombre de la película/serie. |
| GET    | /catalogo/genero/:genero       | Filtra por género del contenido.                           |
| GET    | /catalogo/categoria/:categoria | Filtra por categoría del contenido.                        |
| POST   | /catalogo                      | Crea un nuevo catálogo.                                    |
| PUT    | /catalogo/:id                  | Actualiza un catálogo existente.                           |
| DELETE | /catalogo/:id                  | Elimina un catálogo existente.                             |

## Ejemplos

### 1. Obtener todas las categorías

#### Descripción

Este endpoint permite obtener todas las características de los catálogos.

#### Método

GET /categorias

#### Respuesta

```
[
  {
    "idCategorias": 1,
    "nombre": "Películas"
  },
  {
    "idCategorias": 2,
    "nombre": "Serie"
  }
]
```

### 2. Obtener todo las catálogos

#### Descripción

Este endpoint permite obtener el catálogo completo de películas.

#### Método

GET /catalogos

#### Respuesta

```
[
  {
    "id": 1,
    "poster": "http://localhost:3000/src/posters/1.jpg",
    "titulo": "The Crown",
    "categoria": "Serie",
    "genero": "Drama, Ficción",
    "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
    "temporadas": "4",
    "reparto": "Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter"
  }
]
```

### 3. Obtener catálogo po ID

#### Descripción

Este endpoint permite obtener el catálogo por su id.

#### Método

GET /catalogos/:id

#### Respuesta

    Idem ejemplo 1

### 4. Obtener catálogo por nombre

#### Descripción

Este endpoint permite obtener el catálogo por su nombre o parte del nombre.

#### Método

GET /catalogos/nombre/:nombre
/catalogos/nombre/ava

#### Respuesta

    Idem ejemplo 1

### 5. Obtener catálogo por géneros

#### Descripción

Este endpoint permite obtener el catálogo por su géneros. Drama, aventura, terror etc..

#### Método

GET /catalogos/genero/:genero
/catalogos/genero/drama

#### Respuesta

    Idem ejemplo 1

### 6. Obtener catálogo por categorías

#### Descripción

Este endpoint permite obtener el catálogo por su categoría. Serie o película.

#### Método

GET /catalogos/categoria/:categoria
/catalogos/categoria/serie

#### Respuesta

    Idem ejemplo 1

### 7. Agregar catálogo

#### Descripción

Este endpoint permite agrega un nuevo catálogo.

#### Método

POST /catalogos/
Content-Type: application/json
raw

```
{
  "poster": "nombre_del_poster.jpg",
  "titulo": "Título de la película",
  "idCategorias": 1,
  "resumen": "Resumen de la película",
  "temporadas": "2",
  "trailer": "nombre_del_trailer.mp4",
  "generos": [1, 2],
  "actores": [3, 4]
}
```

#### Respuesta

    "Catálogo agregado con éxito"

### 8. Actualizar catálogo

#### Descripción

Este endpoint permite actualizar un catálogo determinado.

#### Método

PUT /catalogos/:id

```
{
  "poster": "/posters/actualizado.jpg",
  "titulo": "avan",
  "idCategorias": 1,
  "resumen": "Nuevo resumen",
  "temporadas": 5,
  "trailer": "https://nuevo-trailer.com"
}
```

#### Respuesta

```
{
  "poster": "/posters/actualizado.jpg",
  "titulo": "avan",
  "idCategorias": 1,
  "resumen": "Nuevo resumen",
  "temporadas": 5,
  "trailer": "https://nuevo-trailer.com"
}
```

NOTA: Para las tablas intermedias se tendrán que realizar con este ultimo id la asignación de datos.

### 9. Eliminar catálogo

#### Descripción

Este endpoint permite eliminar un catálogo determinado.

#### Método

DELETE /catalogos/:id

#### Respuesta

    "Catálogo eliminado con éxito"
