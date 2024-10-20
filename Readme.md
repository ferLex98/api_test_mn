-----------------------------PRUEBAS AUTOMATIZADAS - EJERCICIO 1-----------------------------
#DESCRIPCIÓN
Este proyecto contiene los siguientes casos de prueba", aplicados a las apis del sitio web "PetStore".
- Agregar una nueva mascota
- Consultar la mascota ingresada por ID
- Actualizar nombre y estado “sold” de la mascota
- Buscar mascota por id y estado: "sold"

#ESTRUCTURA DEL PROYECTO

- Pre Requisitos
- Configuración del Entorno
- Construcción y Ejecución
- Visualización de Resultados
- Estructura del Código

#1. PRERREQUISITOS

Antes de ejecutar el proyecto, asegúrate de cumplir con los siguientes requisitos:
- Sistema Operativo: Windows 11 o versiones más recientes.
- Entorno de Desarrollo: IntelliJ IDEA 2024.2.3 o superior.
- Gestor de Dependencias: Gradle 8.5, configurado en la variable de entorno GRADLE_HOME
  Nota: Para verificar la versión, abre la línea de comandos y ejecuta gradle -version.
- Java Development Kit (JDK): Versión 17, configurada en la variable de entorno JAVA_HOME.
  Nota: Para confirmar la versión, ejecuta java -version en la línea de comandos.

#2. CONFIGURACIÓN DEL ENTORNO

Sigue estos pasos para configurar tu entorno de trabajo:

- Clonar el Repositorio:
  Clona el repositorio desde GitHub con el siguiente comando:
  git clone https://github.com/ferLex98/api_test_mn.git
- Acceder al Proyecto:
  Ve al directorio raíz del proyecto:
  cd path/api_test_mn/
- Construir el Proyecto:
  Ejecuta el siguiente comando para limpiar y construir el proyecto:
  ./gradlew clean build

#3. CONSTRUCCIÓN Y EJECUCIÓN

Existen dos formas principales para ejecutar las pruebas:

- Desde la Terminal:
    * Ejecuta el siguiente comando en la raíz del proyecto para realizar la construcción y ejecutar las pruebas:

  ./gradlew clean build

- Desde IntelliJ IDEA:
    * Abre el proyecto en IntelliJ IDEA.
    * Dirígete al panel de herramientas de Gradle (ubicado en la parte superior derecha).
    * Se listarán las tareas disponibles.
    * Ejecuta la tarea RunnerTest para iniciar la ejecución de las pruebas.

#4. VISUALIZACIÓN DE RESULTADOS

Al finalizar las pruebas, se generará automáticamente un informe detallado, para visualizarlo:
- Abre el archivo index.html ubicado en la siguiente ruta:
  /build/reports/tests/test/index.html
- Accede al informe en tu navegador para revisar estadísticas, tiempo de ejecución y los detalles de cada caso de prueba.

#5. ESTRUCTURA DEL PROYECTO

El proyecto utiliza el patrón de diseño Screenplay, lo que facilita la organización y el mantenimiento del código.
Esta organización asegura que el código sea fácil de mantener, ampliar y reutilizar a lo largo del tiempo.