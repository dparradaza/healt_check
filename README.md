# healt_check

# Requerimientos

Necesitará Java JDK 6+ y Maven instalados y configurados en su ruta.
health_check.json

Tambien tener Python-flask para la ejecución del los reportes

Abra el archivo health_check.json y agregue cualquier par de nombre y url donde:

    nombre: es el nombre de la prueba
    url: es el punto final que será probado

# Ejecución

Ejecute el siguiente comando en la carpeta del proyecto:

    mvn clean test 

# Informes

Hay dos tipos de informes que se generarán siempre:

    xUnit: el informe se generará en la carpeta target / surefire-reports.
    HTML: el informe se generará en target / report /. El nombre de archivo será el mismo que el nombre de archivo json.

# Multiple health check files

Si necesita crear muchos archivos de comprobación de estado para ejecutar en dev, test y otros entornos, debe usar -Dfile = filename.json donde:

    -D es una indicación de una propiedad al código.
    archivo es el nombre de la propiedad (no lo cambies)
    filename.json es el archivo que necesita para ejecutar

Ejemplo:

mvn clean test -Dfile=health_check_dev.json

