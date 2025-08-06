# Template de lecciones reproducibles de MetaDocencia


Este repositorio es un **template oficial de MetaDocencia** para crear cursos y lecciones reproducibles utilizando [Carpentries Workbench](https://carpentries.github.io/sandpaper/), adaptado con nuestra configuración y estilo.


> Puedes usar [este repositorio](https://github.com/MetaDocencia/metadocencia-workbench-template) como punto de partida, directamente desde GitHub, sin necesidad de herramientas locales.

---

## 🚀 ¿Cómo comenzar una lección nueva?

### 1. Crear un nuevo repositorio

Generamos una copia accediendo directamente a: https://github.com/MetaDocencia/metadocencia-workbench-template/generate

Asignamos un nombre a tu nuevo repositorio (por ejemplo, `leccion-mi-tema`) y Seleccionamos **Create repository**.

---

### 2. Editar la lección desde GitHub

Una vez creado el repositorio, podemos comenzar a editarlo directamente desde la interfaz web:

- Los episodios están en la carpeta `episodes/` (cada archivo `.md` es una sección de la lección).
- La página principal está en `index.md`.
- La configuración general está en `config.yaml`.

Con el botón de ✏️ **editar** en cada archivo podemos modificarlo, y luego seleccionamos **Commit changes** para guardar.

> No necesitás usar RStudio ni línea de comandos.

---

## 🌐 Publicación del sitio en GitHub Pages

Para habilitar la publicación automática del sitio web de la lección desde GitHub Pages:

1. Desde el repositorio, seleccionamos **Settings > Pages**.
2. En la sección **"Source"**, configuramos:
   - **Branch**: `gh-pages`
   - **Carpeta**: `/ (root)`
3. Seleccionamos **“Save”**.

### Verificación de la publicación

1. Editamos cualquier archivo de la lección desde GitHub (por ejemplo, un episodio).
2. GitHub ejecutará automáticamente el flujo de publicación.
3. Podemos ver el progreso en la pestaña **Actions** del repositorio.
4. Una vez finalizado el proceso, el sitio estará disponible en:


```
https://<usuario-o-organización>.github.io/<nombre-del-repo>/
```

Por ejemplo:  
https://metadocencia.github.io/leccion-ejemplo/

---

## 📬 Contacto

¿Tienes dudas? Escríbenos a:  
📧 infraestructura@metadocencia.org

Puedes encontrar más materiales y recursos en:  
🌐 https://www.metadocencia.org

---

# MetaDocencia Reproducible Lesson Template

This repository is an **official MetaDocencia template** to create reproducible lessons using the [Carpentries Workbench](https://carpentries.github.io/sandpaper/), adapted with our custom configuration and style.

> Use this repository as a starting point for your own lessons, directly from GitHub — no local tools needed.

---

## 🚀 How to start a new lesson

### 1. Create a new repository

Go directly to:  
https://github.com/MetaDocencia/metadocencia-workbench-template/generate

Choose a name for your new repository (e.g., `lesson-my-topic`) and click **Create repository**.

---

### 2. Edit your lesson via GitHub

Once your repository is created, you can edit everything directly in the web interface:

- Lesson episodes are in the `episodes/` folder (each `.md` file is a section).
- The home page is `index.md`.
- General configuration is in `config.yaml`.

Use the ✏️ **edit** button in each file to make changes, then select **Commit changes** to save.

> No need for RStudio or command line tools.

---

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

---

## 📬 Contact

Questions or suggestions? Reach us at:  
📧 infraestructura@metadocencia.org

Explore more of our resources:  
🌐 https://www.metadocencia.org
