---
title: 'Sistemas de coordenadas'
teaching: 15
exercises: 0
---

:::::::::::::::::::::::::::::::::::::: questions

- ¿Qué es un sistema de coordenadas proyectadas y en qué se diferencia de un sistema geográfico?
- ¿Qué es el sistema UTM y cómo se utiliza para referenciar imágenes satelitales?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Comprender las diferencias entre los sistemas de coordenadas geográficas y proyectadas.
- Reconocer el sistema de coordenadas UTM y cómo se subdivide el mundo en zonas.
- Conocer el sistema MGRS y su utilidad para identificar mosaicos satelitales.

::::::::::::::::::::::::::::::::::::::::::::::::



Lss personas que se dedican a la cartografía o a ma geografía prefieren trabajar con mapas en los que las distancias medidas entre los puntos del mapa sean aproximadamente proporcionales a las distancias reales. Este no es el caso cuando se usan directamente coordenadas de **latitud** y **longitud**, típicas de un [sistema de coordenadas geográficas (GCS)](https://es.wikipedia.org/wiki/Sistema_de_referencia_geod%C3%A9sico).

Un enfoque más práctico para representar el espacio terrestre es utilizar un [**sistema de referencia de coordenadas proyectado**](https://es.wikipedia.org/wiki/Proyecci%C3%B3n_cartogr%C3%A1fica). Este sistema transforma la superficie curva de la Tierra en un plano bidimensional mediante una **proyección cartográfica**. Esto implica cierta distorsión, pero permite trabajar con unidades métricas (por ejemplo, metros) y realizar cálculos espaciales más precisos.

![](fig/geographic_crs.png)

Distintas proyecciones preservan diferentes propiedades: forma, área, distancia o dirección. La elección de una proyección adecuada depende del tipo de análisis que se desea realizar.



## Coordenadas Universal Transversal de Mercator (UTM)

El sistema de coordenadas [**UTM (Universal Transverse Mercator)**](https://es.wikipedia.org/wiki/Sistema_de_coordenadas_universal_transversal_de_Mercator) es uno de los más utilizados para trabajar con datos satelitales. Divide el mundo en 60 zonas longitudinales de 6° de ancho cada una, numeradas del 1 al 60 de oeste a este, comenzando desde el meridiano 180°.

![](fig/utm_zones.png)

Cada zona UTM tiene su propio sistema de coordenadas proyectadas basado en el modelo [WGS84](https://es.wikipedia.org/wiki/WGS84). Las coordenadas se expresan en metros, lo que permite ubicar con precisión cualquier punto dentro de esa zona.

- Las coordenadas se llaman **este (Easting)** y **norte (Northing)**.
- El meridiano central tiene un **falso este** de 500,000 m para evitar números negativos.
- En el hemisferio sur, también se añade un **falso norte** de 10,000,000 m.

Por ejemplo:
- **EPSG:4326** corresponde a coordenadas geográficas (latitud-longitud) con WGS84.
- **EPSG:3857** es la proyección [Web Mercator](https://en.wikipedia.org/wiki/Web_Mercator_projection), usada en Google Maps.
- **EPSG:32610** representa la zona 10N del sistema UTM.
- **EPSG:32710** representa la misma zona 10 pero en el hemisferio sur.

Es posible explorar estos códigos en el [registro EPSG](https://epsg.io/) que los documenta.


## Sistema de Referencia de Cuadrículas Militares (MGRS)

El [**MGRS (Military Grid Reference System)**](https://en.wikipedia.org/wiki/Military_Grid_Reference_System) es un estándar de coordenadas utilizado por organizaciones como la OTAN para identificar ubicaciones en la superficie terrestre. Se basa en el sistema UTM pero lo adapta con una notación más compacta y legible.

- Divide el mundo en zonas UTM (60 zonas de 6°).
- Cada zona se subdivide en **bandas de 8° de latitud**, identificadas con letras (de C a X, sin I ni O).
- Luego se divide en **mosaicos de 100 km × 100 km**, identificados por dos letras adicionales (columna y fila).

Por ejemplo, el mosaico **10TEM** indica:
- Zona UTM 10
- Banda T (latitud)
- Columna E, fila M dentro de esa zona

Este sistema permite referenciar fácilmente regiones asociadas a imágenes satelitales sin necesidad de usar coordenadas numéricas extensas, y es el sistema adoptado por muchos productos de la [NASA Earthdata](https://www.earthdata.nasa.gov/).


