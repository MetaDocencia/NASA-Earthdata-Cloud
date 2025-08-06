---
site: sandpaper::sandpaper_site
---

# Introducción al uso de datos Nasa Earthdata cloud para el monitoreo de cambios y disturbios ambientales

Les damos la bienvenida al curso **"Introducción al uso de datos Nasa Earthdata cloud para el monitoreo de cambios y disturbios ambientales"**, una adaptación del curso [«NASA TOPS-T Reproducibly Analyzing Wildfire, Drought, and Flood Risk with NASA Earthdata Cloud»](https://github.com/ScienceCore/climaterisk/tree/main) desarrollado por [2i2c](https://2i2c.org/) y [MetaDocencia](https://www.metadocencia.org/).

En este taller, se explorara cómo utilizar los datos satelitales de la plataforma Earthdata Cloud de la NASA, específicamente los productos OPERA, para el monitoreo de cambios y disturbios ambientales. Se toma como caso de estudio los cambios en la cobertura vegetal en la región de Maranhão, Brasil, con el objetivo de identificar patrones de deforestación a través de Jupyter Notebooks con código en Python para trabajar de manera reproducible con los datos. 

## Cuál va a ser el recorrido

Este curso está organizado en tres grandes bloques:

1. **Fundamentos de teledetección.**
¿Qué es? ¿Cómo funcionan los sistemas satelitales? ¿Qué es un raster? ¿Qué es un vector? ¿Qué son los sistemas de coordenadas? Esta parte nos va a dar la base conceptual para todo lo que viene después.
2. **Productos OPERA de NASA.**
Vamos a explicar qué son, cómo se generan, qué algoritmos se usan. También haremos un ejercicio práctico de descarga y visualización de estos productos en QGIS.
3. **Caso de estudio de deforestación en Maranhão, región del Amazonia.**
Para todo esto, vamos a trabajar en el hub de 2i2c, un entorno en la nube que es accesible desde el navegador, y que nos permite correr código, trabajar con notebooks, cargar datos y compartir resultados sin necesidad de instalar nada en sus computadoras.
En el hub vamos a usar una notebook para trabajar con productos de la NASA vía STAC y usando python. Vamos a discutir el caso de estudio, reflexionar sobre las fortalezas y limitaciones de los productos y sus usos potenciales para la gestión ambiental.

## Nos presentamos

### MetaDocencia

MetaDocencia es una organización sin fines de lucro donde trabajamos para que la producción, la comunicación y la aplicación de saberes científicos y técnicos sean globalmente equitativos.

Construimos capacidades científicas y técnicas en forma responsable y con mirada local, a través de la co-creación de redes, espacios de aprendizaje y recursos accesibles para comunidades hispanohablantes.

Trabajamos desde América Latina consolidando a la región en el mapa global de la investigación. Nos proponemos facilitar la conexión de profesionales en ciencia y técnica, promoviendo el intercambio de conocimientos y la colaboración. 

#### Nuestros pilares de trabajo

Llevamos adelante nuestra propuesta a partir de una serie de proyectos que se enmarcan en tres pilares de trabajo que están interconectados y forman un círculo virtuoso: Contextualización, Formación y Comunidad.

- **Contextualización:** Adaptamos materiales, textos y recursos al español y al inglés.
- **Formación:** Enseñamos y aprendemos en forma virtual y presencial. Nuestras clases son activas, con un enfoque pedagógico basado en evidencia.
- **Comunidad:** Conectamos, intercambiamos y aprendemos con otras personas y organizaciones.

Si les interesa saber más sobre nosotros, pueden entrar a [nuestra web](https://www.metadocencia.org). También pueden suscribirte a nuestro [Newsletter](https://www.metadocencia.org/suscripcion/) y recibir todas las novedades.

### Docentes de este taller

- **[Eliana Gonzalez:](https://github.com/ebgonzal)** Licenciada en Ciencias Ambientales por la UBA y Doctora en Ciencias Aplicadas y de la Ingeniería por la UNSAM. Se especializa en análisis de datos geoespaciales, y desde hace más de 10 años trabaja en temas vinculados a teledetección  para la evaluación de impactos de actividades antrópicas, como cambios en el uso del suelo, y en la enseñanza de los mismos.
- **[Maira Gayol:]()** Licenciada en Ciencias Ambientales y Doctora en Ciencias Aplicadas y de la Ingeniería. Es investigadora y docente de posgrado, se especializa en el análisis de datos geoespaciales,y  el uso de la  teledetección para el monitoreo y estudio de la ecología de humedales. 

### Equipo de MetaDocencia

- **[Nicolás Palopoli](https://www.metadocencia.org/authors/npalopoli/)** Co-Director Ejecutivo y Chair del Consejo Asesor. Desde 2008 realiza tareas docentes de grado, posgrado y extensión, en modalidad presencial y virtual, tanto en UNQ como en otras instituciones educativas y para comunidades de práctica. Instructor y entrenador de instructores en The Carpentries.

- **[Laura Ación](https://www.metadocencia.org/authors/lacion/)** Co-Directora Ejecutiva. Investigadora adjunta del CONICET en la Universidad de Buenos Aires, donde dirige el Co-Laboratorio de Uso Responsable de Datos. Tiene más de dos décadas de experiencia ofreciendo servicios de consultoría y enseñanza. 
  
- **[Jesica Formoso](https://www.metadocencia.org/authors/jformoso/)** Coordinadora del área de Medición de Impacto de MetaDocencia. Psicóloga cognitiva y Doctora por la Universidad de Buenos Aires e investigadora asistente de CONICET. Se dedica a la docencia y la investigación, destacándose como organizadora del capítulo de Buenos Aires de R-Ladies. Instructora certificada de RStudio y The Carpentries.
  
- **[Paz Miguez](https://www.metadocencia.org/authors/pazmiguez/)** Coordinadora de áreas Institucional y Formación. Licenciada en Ciencia Política, con una Maestría en Política Educativa y un Profesorado en Docencia Superior. Más de 15 años de experiencia, en el diseño, gestión y monitoreo de programas educativos.
  
- **[Julián Buede](https://www.metadocencia.org/authors/jbuede/)** Equipo de Comunicación. Se especializa en formatos para contenidos audiovisuales educativos, especialmente en el ámbito de tutoriales y clases asincrónicas, con el objetivo de desarrollar formas creativas de presentar información.
  
- **[Irene Vazano](https://www.metadocencia.org/authors/irenevazano/)** Coordinadora del área de Infraestructura. Licenciada en Bibliotecología en la UCSE-DABA. Con experiencia de trabajo en bibliotecas académicas y como profesional independiente en diversos proyectos digitales, desempeñando roles de administración y garantizando la calidad de accesibilidad.


## Antes de empezar

### Pautas de convivencia

Estas son nuestras [pautas de convivencia](https://doi.org/10.5281/zenodo.12534195). Nos ayudan a fomentar un ambiente abierto, seguro y amigable y garantizar la participación de todas las personas en nuestras actividades y espacios virtuales.

Alentamos a la comunidad a apropiarse y a participar de estas pautas para que representen a todas las personas. Nos comprometemos a construir una
comunidad amigable y respetuosa, y aunque en algunas ocasiones fallaremos, nuestro objetivo es que todas las personas reciban un trato justo, inclusivo y lo más equitativo posible. 

## Código Abierto - Ciencia Abierta - Educación Abierta

Creemos muy firmemente que las personas aprenden mejor cuando aprenden juntas, por eso todos estos materiales están disponibles gratuitamente bajo la licencia Creative Commons - Attribution 4.0. Te alentamos a que los compartas, adaptes y reuses, siempre que incluyas un enlace a la fuente original y distribuyas tu propio material bajo la misma licencia para ayudar a otras personas.

[![CC BY 4.0][cc-by-shield]](https://creativecommons.org/licenses/by/4.0/legalcode.es)

[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg


---

## 📬 Contacto

¿Tienes dudas? Escríbenos a:  
📧 formacion@metadocencia.org

Puedes encontrar más materiales y recursos en:  
🌐 https://www.metadocencia.org







