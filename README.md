# Introducción al uso de datos Nasa Earthdata cloud para el monitoreo de cambios y disturbios ambientales

En este taller, se explorara cómo utilizar los datos satelitales de la plataforma Earthdata Cloud de la NASA, específicamente los productos OPERA, para el monitoreo de cambios y disturbios ambientales. Se toma como caso de estudio los cambios en la cobertura vegetal en la región de Maranhão, Brasil, con el objetivo de identificar patrones de deforestación a través de Jupyter Notebooks con código en Python para trabajar de manera reproducible con los datos. El taller se organiza en tres modulos:

1. Fundamentos de teledetección.
2. Utilización de preoductos OPERA de la NASA y plataforma NASA Earthdata.
3. Caso de estudio: Deforestación en Maranhão.

## Motivación para participar

Entender los cambios en la superficie terrestre y sus consecuencias es crucial para la gestión sostenible de los recursos naturales. En este contexto, los productos OPERA de la NASA ofrecen una poderosa herramienta para monitorear modificaciones en la vegetación, las precipitaciones, las aguas superficiales y el uso del suelo. A través de este taller, MetaDocencia busca capacitar a los participantes para que puedan analizar estos cambios de manera reproducible, a través de Jupyter Notebooks con código en Python, con el fin de aplicar los resultados en la toma de decisiones informadas para estudios ambientales y planificación territorial.

## Objetivos de aprendizaje

Quienes completen esta formación podrán:

- Acceder y visualizar los datos terrestres, disponibles a través de la plataforma Earthdata Cloud de la NASA, de una zona de interés específica.
- Tener una primera aproximación al uso de los nuevos productos satelitales de NASA OPERA dist alert para la evaluación de disturbios en la cobertura vegetal y el análisis de alertas ambientales. 
- Aplicar herramientas de código abierto para el análisis geoespacial utilizando flujos de trabajo reproducibles.  

## ¿Para quién está pensado el taller?

Este curso está dirigido a profesionales que deseen aprender a utilizar productos derivados de imágenes satelitales para el análisis de problemáticas ambientales, como la detección de deforestación y el monitoreo de cambios en la cobertura del suelo. Es necesario contar con conocimientos básicos de programación en algún de programación para seguir los contenidos, ya que el análisis de los datos se realiza utilzando Python mediante Jupyter Notebooks.

Puedes encontrár más información de potenciales participantes en la sección [**perfiles de participantes**](https://github.com/MetaDocencia/NASA-Earthdata-Cloud/blob/main/profiles/learner-profiles.md).

## ¿Qué **no** incluye esta formación?

- Fundamentos de programación en python.
- Desarrollo extensivo de librerías de Python utilizadas a lo largo del tutorial.
- Técnicas de modelado geoespacial o análisis predictivo.
- Teoría avanzada de conceptos relacionados con los datos geoespaciales.

## Duración 

Se estima que este curso lleva un total de 3 horas, incluyendo 3 módulos de 50 minutos cada uno, 4 ejercicios (dos encuestas de opción múltiple y dos ejercicios prácticos), y dos pausas de entre 5 y 10 minutos. 


## Agradecimientos

Esta formación es una adaptación al español de los materiales desarrollados por [2i2c](https://2i2c.org/) y [MetaDocencia](https://www.metadocencia.org/) para enseñar a usar los productos de la plataforma [NASA Earthdata Cloud](https://www.earthdata.nasa.gov/) para evaluar riesgo de incendios, sequías e inundaciones. Pueden encontrar los materiales originales aquí: [https://github.com/ScienceCore/climaterisk](https://github.com/ScienceCore/climaterisk). 

El desarrollo de esta formación fue posible gracias al Grant NNH22ZDA001N-TOPST otorgado por NASA TOPS [https://zenodo.org/records/8250979](https://zenodo.org/records/8250979) y gracias al Grant otorgado por la Chan Zuckerberg Initiative [https://zenodo.org/records/7386373](https://zenodo.org/records/7386373).


## Versión adaptada por:

- [Nicolás Palopoli](https://github.com/NPalopoli)
- [Jesica Formoso](https://github.com/JFormoso)
- [Eliana Gonzalez](https://github.com/ebgonzal)
- [Maira Gayol]()
- [Patricia Loto](https://github.com/PatriLoto)
- [Mariela Rajngewerc](https://github.com/marielaraj)

## ¡Sirvete sin culpa!

¿Te vienen bien cualquiera de nuestros contenidos? ¡Sírvete sin culpa! Nuestros materiales están disponibles en forma gratuita bajo [licencia CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.es). Es decir, puedes reusar o editar cualquier material que aparece encima de estas líneas, lo único que pedimos a cambio es que incluyas una referencia a esta página web o la referencia del material cuando el material tenga una forma explícita de referenciarlo. Para más información, por favor escríbenos a formacion@metadocencia.org.

## Cómo contribuir

Puedes seguir las instrucciones de como [contribuir](./CONTRIBUTING.md)

## 📬 Contacto

¿Tienes dudas? Escríbenos a:  
📧 formacion@metadocencia.org

Puedes encontrar más materiales y recursos en:  
🌐 https://www.metadocencia.org

---

# Plantilla de Lecciones Reproducibles de MetaDocencia

Este repositorio es una **plantilla oficial de MetaDocencia** para crear lecciones reproducibles usando el [Carpentries Workbench](https://carpentries.github.io/sandpaper/), adaptada con nuestra configuración y estilo personalizado.

> Usá este repositorio como punto de partida para tus propias lecciones, directamente desde GitHub — no necesitás herramientas locales.

## 🚀 Cómo comenzar una nueva lección

### 1. Crear un nuevo repositorio

Ingresá directamente a:
https://github.com/MetaDocencia/metadocencia-workbench-template/generate

Elegí un nombre para tu nuevo repositorio (por ejemplo, `leccion-mi-tema`) y hacé clic en **Create repository**.

### 2. Editar tu lección desde GitHub

Una vez creado tu repositorio, podés editar todo directamente desde la interfaz web:

1. Los episodios de la lección están en la carpeta `episodes/` (cada archivo `.md` es una sección).
2. La página de inicio es `index.md`.
3. La configuración general está en `config.yaml`.

Usá el botón ✏️ **edit** en cada archivo para hacer cambios, y luego seleccioná **Commit changes** para guardar.

No necesitás RStudio ni herramientas de línea de comandos.

## Publicar el sitio con GitHub Pages

Para habilitar la publicación automática del sitio web de la lección con GitHub Pages, seguí estos pasos:

1. Desde el repositorio, hacé clic en **Settings > Pages**.
2. En la sección **"Source"**, configurá:
   - **Branch:** `gh-pages`
   - **Folder:** `/ (root)`
3. Hacé clic en **“Save”**.

### Verificar la publicación

1. Editá cualquier archivo del repositorio de la lección (por ejemplo, un episodio).
2. GitHub activará automáticamente el flujo de publicación.
3. Podés seguir el proceso en la pestaña Actions.
4. Una vez que el flujo termine, el sitio estará disponible en:

``` 
https://<tu-usuario-o-organización>.github.io/<nombre-del-repositorio>/
``` 
Ejemplo:
https://metadocencia.github.io/lesson-example/

## 📬 Contacto
¿Tenés preguntas o sugerencias? Escribinos a:
📧 infraestructura@metadocencia.org

## Explorá más de nuestros recursos:
🌐 https://www.metadocencia.org

---

# MetaDocencia Reproducible Lesson Template

This repository was created using an **official MetaDocencia template** to create reproducible lessons using the [Carpentries Workbench](https://carpentries.github.io/sandpaper/), adapted with our custom configuration and style.

> Use this repository as a starting point for your own lessons, directly from GitHub — no local tools needed.


## 🚀 How to start a new lesson

### 1. Create a new repository

Go directly to:  
https://github.com/MetaDocencia/metadocencia-workbench-template/generate

Choose a name for your new repository (e.g., `lesson-my-topic`) and click **Create repository**.


### 2. Edit your lesson via GitHub

Once your repository is created, you can edit everything directly in the web interface:

- Lesson episodes are in the `episodes/` folder (each `.md` file is a section).
- The home page is `index.md`.
- General configuration is in `config.yaml`.

Use the ✏️ **edit** button in each file to make changes, then select **Commit changes** to save.

> No need for RStudio or command line tools.


## Publishing the Site on GitHub Pages

To enable automatic publication of the lesson website using GitHub Pages, follow these steps:

1. From the repository, click **Settings > Pages**.
2. Under **"Source"**, configure:
   - **Branch**: `gh-pages`
   - **Folder**: `/ (root)`
3. Click **“Save”**.

### Verifying the publication

1. Edit any file in the lesson repository (e.g., an episode).
2. GitHub will automatically trigger the publishing workflow.
3. You can monitor the process under the **Actions** tab.
4. Once the workflow completes, the site will be available at:

``` 
https://<your-user-or-org>.github.io/<repository-name>/
```

Example:  
https://metadocencia.github.io/lesson-example/


## 📬 Contact

Questions or suggestions? Reach us at:  
📧 infraestructura@metadocencia.org

Explore more of our resources:  
🌐 https://www.metadocencia.org
