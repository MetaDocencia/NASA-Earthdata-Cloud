---
site: sandpaper::sandpaper_site
---

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

> No es necesario saber usar RStudio ni línea de comandos.

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



