# ERP Sisa

Este es un sistema ERP desarrollado en ASP.NET.

## Estructura del Proyecto

El proyecto se divide en las siguientes carpetas principales:

*   **BD:** Contiene la lógica de conexión a la base de datos.
*   **dll:** Contiene las librerías compiladas del proyecto.
*   **packages:** Contiene las dependencias externas del proyecto.
*   **Publicacion:** Contiene los archivos para el despliegue del proyecto.
*   **Services:** Contiene los servicios web del proyecto.
*   **SisaDev:** Contiene el código fuente principal de la aplicación web.
    *   **Account:** Gestión de cuentas de usuario.
    *   **Administracion:** Módulo de administración.
    *   **Biddings:** Módulo de licitaciones.
    *   **Cliente:** Módulo de clientes.
    *   **Clientes:** Gestión de clientes.
    *   **Compras:** Módulo de compras.
    *   **js:** Archivos de JavaScript.
    *   **Models:** Modelos de Entity Framework.
    *   **Proyecto:** Módulo de gestión de proyectos.
    *   **Reportes:** Módulo de reportes.
    *   **Ventas:** Módulo de ventas.
*   **Soap:** Contiene los servicios SOAP del proyecto.

## Implementación de Manejo de Errores

El objetivo es agregar bloques `try-catch` a todas las funciones del proyecto para manejar y registrar errores.

La implementación se realizará archivo por archivo, comenzando con un archivo piloto para validar el enfoque.

**Archivo Piloto:** `SisaDev/Inicio.aspx.cs` y `SisaDev/js/Inicio.js`

**Próximos Pasos:**

Por favor, revisa los cambios realizados en los archivos piloto. Si estás de acuerdo con el enfoque, por favor indica el próximo archivo o módulo para continuar con la implementación.
