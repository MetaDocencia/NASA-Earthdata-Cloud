---
title: 'Introducción'
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- ¿Cómo se escribe una lección usando R Markdown y `{sandpaper}`?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explicar cómo usar markdown con la nueva plantilla de lección  
- Demostrar cómo incluir fragmentos de código, figuras y bloques de actividades anidados

::::::::::::::::::::::::::::::::::::::::::::::::

## Introducción

Esta es una lección creada mediante el template de Workbench adaptada por MetaDocencia, creada por The Carpentries. Está escrita en  
[Markdown con sintaxis de Pandoc][pandoc] para archivos estáticos (con extensión `.md`) y  
[R Markdown][r-markdown] para archivos dinámicos que pueden renderizar código y mostrar el resultado  
(con extensión `.Rmd`). Consultá la [Introducción a The Carpentries  
Workbench][carpentries-workbench] para ver la documentación completa.

Hay tres secciones requeridas para una plantilla de lección válida:

 1. `questions` se muestran al comienzo del episodio para preparar a la persona que aprenderá el contenido.  
 2. `objectives` son los objetivos de aprendizaje del episodio y se muestran junto con las preguntas.  
 3. `keypoints` se muestran al final del episodio para reforzar los objetivos.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Las notas para instructores en línea pueden ayudar a anticipar desafíos y almacenar notas de la persona oradora.  
Aparecen en la "Vista para instructores".

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge 

## Desafío 1: ¿Podés hacerlo?

¿Cuál es el resultado de este comando?

```r
paste("Esta", "nueva", "lección", "luce", "bien")
```

:::::::::::::::::::::::: solution 

## Salida

```output
[1] "Esta nueva lección luce bien"
```

:::::::::::::::::::::::::::::::::


## Desafío 2: ¿cómo anidar soluciones dentro de bloques de desafío?

:::::::::::::::::::::::: solution 

Es posible gregar una línea con al menos tres dos puntos y la etiqueta `solution`.

:::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::

## Figuras

Podés incluir figuras generadas desde R Markdown:


``` r
pie(
  c(Sky = 78, "Lado soleado de la pirámide" = 17, "Lado sombreado de la pirámide" = 5), 
  init.angle = 315, 
  col = c("deepskyblue", "yellow", "yellow3"), 
  border = FALSE
)
```

<div class="figure" style="text-align: center">
<img src="fig/introduction-rendered-pyramid-1.png" alt="ilusión de gráfico circular de una pirámide"  />
<p class="caption">El sol sale cada mañana</p>
</div>

O podés usar markdown de pandoc para figuras estáticas con la siguiente sintaxis:

`![subtítulo opcional que aparece debajo de la figura](url de la figura){alt='texto alternativo para accesibilidad'}`

![¡Estás participando de un curso de MetaDocencia!](https://raw.githubusercontent.com/MetaDocencia/varnish/main/inst/pkgdown/assets/assets/images/metadocencia-logo.svg){alt='Logo de MetaDocencia con una manzana y texto del nombre de la Organización.'}

## Matemática

El contenido puede contener ecuaciones en $\LaTeX$ al describir cómo crear  
informes dinámicos con {knitr}, por lo que usamos MathJax para mostrarlas así:

`$ lpha = \dfrac{1}{(1 - eta)^2}$` se convierte en: $ lpha = \dfrac{1}{(1 - eta)^2}$

¿Genial, no?

::::::::::::::::::::::::::::::::::::: keypoints 

- Usá archivos `.md` para episodios con contenido estático  
- Usá archivos `.Rmd` para episodios que necesiten generar salidas dinámicas  
- Ejecutá `sandpaper::check_lesson()` para identificar problemas en tu lección  
- Ejecutá `sandpaper::build_lesson()` para previsualizar tu lección localmente

::::::::::::::::::::::::::::::::::::::::::::::::
