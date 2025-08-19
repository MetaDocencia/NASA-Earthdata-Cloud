---
title: 'Modelos de datos geoespaciales'
teaching: 20
exercises: 1
---

:::::::::::::::::::::::::::::::::::::: questions 

- ¿Qué son los modelos ráster y vectorial?
- ¿Cuáles son las diferencias clave entre estos formatos?
- ¿En qué situaciones conviene usar cada uno?


::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Comprender qué representan los modelos ráster y vectorial en el análisis geoespacial.
- Diferenciar entre los formatos según su estructura de datos y aplicaciones.
- Identificar casos de uso en los que se aplica cada modelo para resolver problemas ambientales.
  
::::::::::::::::::::::::::::::::::::::::::::::::


## ¿Qué son los modelos de datos geoespaciales?

En teledetección y sistemas de información geográfica (SIG) (en inglés, *Geographical Information System, GIS*), los datos espaciales se representan principalmente en dos formatos: **ráster** y **vectorial**.

## Datos ráster

El término _"dato ráster"_ o _"ráster"_ proviene de los gráficos por computadora. En esencia, un ráster se refiere a una secuencia de valores numéricos dispuestos en una tabla rectangular (similar a una [matriz](https://es.wikipedia.org/wiki/Matriz_(matem%C3%A1tica)) de [álgebra lineal](https://es.wikipedia.org/wiki/%C3%81lgebra_lineal)).

Los conjuntos de datos ráster son útiles para representar cantidades continuas, como presión, elevación, temperatura, clasificación de la cobertura terrestre, etc., muestreadas en una [teselación](https://es.wikipedia.org/wiki/Teselado), es decir, una cuadrícula discreta que divide una región bidimensional de extensión finita. En el contexto de los [Sistemas de Información Geográfica (GIS, por sus siglas en inglés)](https://en.wikipedia.org/wiki/Geographic_information_system), la región espacial es la proyección plana de una porción de la superficie terrestre.

Los rásters se aproximan a las distribuciones numéricas continuas almacenando valores individuales dentro de cada celda de la _cuadrícula_ o _píxel_. Los rásters pueden representar datos recopilados en varios tipos de celdas de cuadrícula no rectangulares (por ejemplo, hexágonos). Para nuestros fines, restringiremos nuestra atención a las cuadrículas en las que todos los píxeles son rectángulos que tienen el mismo ancho y alto.

![](fig/raster_neon.png)

<p style="text-align: center;">En esta imagen se muestra un ejemplo de datos ráster. Fuente: <em>National Ecological Observatory Network</em> (NEON).</p>

---

### Cómo comprender los valores de los ráster

Una diferencia importante con las matrices del álgebra lineal es que los datos ráster reales a menudo están _incompletos_. Por eso, suelen incluir un esquema para representar los valores "Sin datos" de los píxeles en los que no es posible hacer una observación significativa. Este esquema puede usar "NaN" ([_Not-a-Number_](https://es.wikipedia.org/wiki/NaN)) o un [_valor testigo_](https://en.wikipedia.org/wiki/Sentinel_value), como `-1`.

Además, los valores de los píxeles se almacenan utilizando un _tipo de datos_ apropiado: números de punto flotante para variables continuas (como temperatura) y enteros para propiedades categóricas (como cobertura del suelo). Como los datos ráster suelen ser grandes, elegir un tipo de datos eficiente puede reducir mucho el tamaño del archivo.

---

### Píxel vs. coordenadas continuas

Cada píxel de un ráster está indexado por su posición de _fila y columna_ desde la esquina superior izquierda, usando [_indexación desde cero_](https://en.wikipedia.org/wiki/Zero-based_numbering). Por ejemplo, en una matriz $10\times10$:

- (0,0) es la esquina superior izquierda
- (0,9) es la esquina superior derecha
- (9,0) es la esquina inferior izquierda
- (9,9) es la esquina inferior derecha

![](http://ioam.github.io/topographica/_images/matrix_coords_hidensity.png)

La indexación desde cero no es universal. Por ejemplo, MATLAB utiliza indexación desde uno. Además:

- Las coordenadas de imagen se expresan como (fila, columna), mientras que las coordenadas continuas se expresan como (x, y).
- La orientación del eje vertical es inversa: en coordenadas de píxel, la fila aumenta hacia abajo; en coordenadas espaciales, la coordenada y aumenta hacia arriba.

![](http://ioam.github.io/topographica/_images/matrix_coords.png)
![](http://ioam.github.io/topographica/_images/sheet_coords_-0.2_0.4.png)

Esto puede causar confusión. Es importante verificar:

- qué convenciones usan los datos ráster de una fuente,
- y qué espera la herramienta GIS que estemos usando.

### Conservación de los metadatos

Los datos ráster usualmente incluyen _metadatos_, como:

- _Sistema de Referencia de Coordenadas (SRC)_: ver [EPSG](https://en.wikipedia.org/wiki/EPSG_Geodetic_Parameter_Dataset), [WKT](https://en.wikipedia.org/wiki/Well-known_text_representation_of_coordinate_reference_systems)
- _Valor NoData_: como `-1`, `255`, etc.
- _Resolución espacial_: tamaño de cada píxel
- _Límites espaciales_: extensión geográfica cubierta
- _Fecha y hora de adquisición_: usualmente en [UTC](https://es.wikipedia.org/wiki/Tiempo_universal_coordinado)

Por ejemplo, los productos OPERA de NASA incluyen esta información en sus nombres de archivo:

```
OPERA_L3_DIST-ALERT-HLS_T10TEM_20220815T185931Z_20220817T153514Z_S2A_30_v0.1_VEG-ANOM-MAX.tif
```

Este nombre incluye la fecha (`20220815T185931Z`) y una ubicación MGRS ([10TEM](https://en.wikipedia.org/wiki/Military_Grid_Reference_System)). Esto permite identificar información clave sin tener que abrir el archivo completo.

---

### Uso de GeoTIFF

[GeoTIFF](https://es.wikipedia.org/wiki/GeoTIFF) es un formato ampliamente utilizado para datos ráster georreferenciados. Está basado en el [formato TIFF](https://en.wikipedia.org/wiki/TIFF) e incluye metadatos geoespaciales embebidos. Se usa para representar fotografías aéreas, imágenes satelitales y mapas.

Los metadatos comunes en un archivo `.tif` incluyen:

- extensión espacial
- SRC utilizado
- resolución espacial
- dimensiones del ráster
- cantidad de capas
- proyecciones cartográficas

El formato está documentado en el [estándar OGC GeoTIFF](https://www.ogc.org/standard/geotiff/).

## Datos vectoriales

Ciertas propiedades físicas de interés para los SIG, no se capturan convenientemente mediante datos ráster en cuadrículas discretas. Por ejemplo, las características geométricas de un paisaje, como carreteras, ríos y límites entre regiones, se describen mejor utilizando líneas o curvas en un sistema de coordenadas proyectado de manera adecuada. En el contexto de los GIS, los *datos vectoriales* son representaciones geométricas de estos aspectos del paisaje.


### Cómo comprender los datos vectoriales

Los *datos vectoriales* consisten en secuencias ordenadas de *vértices*, es decir, pares de números de la forma $(x,y)$. Las coordenadas continuas de cada vértice se asocian a una ubicación espacial física en algún [Sistema de Referencia de Coordenadas (SRC)](https://es.wikipedia.org/wiki/Sistema_de_referencia_de_coordenadas) (en inglés, *Coordinate Reference System, CRS*) proyectado.

- **Puntos**: Los vértices aislados representan funciones discretas de dimensión cero (por ejemplo, árboles, faroles, etc.).
- **Líneas** o **polilíneas**: Cualquier secuencia ordenada de por lo menos dos vértices constituye una polilínea que puede visualizarse trazando líneas rectas entre vértices adyacentes. Las líneas o polilíneas son adecuadas para representar características unidimensionales como carreteras, caminos y ríos.
- **Polígonos**: Cualquier secuencia ordenada de por lo menos tres vértices en la que el primero y el último coinciden constituye un polígono (es decir, una forma cerrada). Los polígonos son adecuados para representar regiones bidimensionales como un lago o el límite de un bosque.

Un conjunto único de datos vectoriales georreferenciados con un CRS en particular generalmente contiene cualquier número de puntos, líneas o polígonos.

![](fig/points-lines-polygons-vector-data-types.png)

<p style="text-align: center;">
Esta imagen muestra los tres tipos de datos vectoriales: puntos, líneas y polígonos. Fuente: *National Ecological Observatory Network* (NEON).
</p>

![](fig/points.png)
<p style="text-align: center;">Vista aérea de un paisaje y su representación vectorial con puntos.<br> Fuente: *Sistemas de Información Geográfica* por Victor Olaya.</p>

![](fig/lines.png)
<p style="text-align: center;">Vista aérea de un río y su representación vectorial con líneas.<br> Fuente: *Sistemas de Información Geográfica* por Victor Olaya.</p>

![](fig/polygon.png)
<p style="text-align: center;">Vista aérea de un lago y su representación vectorial como polígono.<br> Fuente: *Sistemas de Información Geográfica* por Victor Olaya.</p>

Como ocurre con los datos ráster, generalmente las representaciones de datos vectoriales van acompañadas de metadatos para almacenar diversos atributos asociados al conjunto de datos. Los datos vectoriales usualmente se especifican con un nivel de precisión superior a la resolución que permiten la mayoría de las cuadrículas ráster. Además, las características geográficas representadas como datos vectoriales permiten efectuar cálculos que los datos ráster no permiten. Por ejemplo, es posible determinar diversas relaciones geométricas o topológicas:

- ¿Un punto se encuentra dentro de los límites de una región geográfica?
- ¿Dos carreteras se intersecan?
- ¿Cuál es el punto más cercano de una carretera a otra región?

Otras magnitudes geométricas, como la longitud de un río o la superficie de un lago, se obtienen aplicando técnicas de geometría computacional a representaciones de datos vectoriales.

### Uso de GeoJSON

[GeoJSON](https://geojson.org/) es un subconjunto de [notación de objeto de JavaScript (JSON)](https://www.json.org). Fue desarrollado a principios de la década del 2000 para representar características geográficas simples junto con atributos no espaciales. El objetivo principal es ofrecer una especificación para la codificación de datos geoespaciales que sean decodificables por cualquier decodificador JSON.

Los detalles técnicos del formato GeoJSON se describen en el documento de estándares [RFC7946](https://datatracker.ietf.org/doc/html/rfc7946).


### Uso de archivos Shapefiles

El estándar [*shapefile*](https://es.wikipedia.org/wiki/Shapefile) es un formato digital para distribuir datos vectoriales geoespaciales y sus atributos asociados. El estándar, desarrollado por [ESRI](https://es.wikipedia.org/wiki/Esri), es compatible con la mayoría de las herramientas de software SIG modernas. El nombre "shapefile" es un poco engañoso porque normalmente consiste en un conjunto de varios archivos (algunos obligatorios, otros opcionales) almacenados en un directorio común con un nombre de archivo común.

> El formato shapefile almacena la geometría como formas geométricas primitivas como puntos, líneas y polígonos. Estas formas, junto con los atributos de datos vinculados a cada una de ellas, crean la representación de los datos geográficos. Los tres archivos obligatorios tienen las extensiones de archivo `.shp`, `.shx` y `.dbf`. El *shapefile* real se refiere específicamente al archivo `.shp`, pero por sí solo está incompleto para su distribución.

Los *shapefiles* utilizan el formato [*Well-known Binary* (WKB)](https://libgeos.org/specifications/wkb/) para codificar las geometrías. Algunas limitaciones incluyen la restricción de los nombres en los campos de los atributos a 10 caracteres o menos y la escasa compatibilidad con Unicode.

Puedes consultar el [informe técnico de shapefile de ESRI (PDF)](https://www.esri.com/content/dam/esrisites/sitecore-archive/Files/Pdfs/library/whitepapers/pdfs/shapefile.pdf) para obtener más información.

#### Archivos obligatorios

- `.shp`: geometría espacial (puntos, líneas, polígonos)
- `.shx`: índice de formas
- `.dbf`: atributos asociados

#### Archivos opcionales

- `.prj`: descripción del sistema de coordenadas en formato [WKT](https://en.wikipedia.org/wiki/Well-known_text_representation_of_coordinate_reference_systems)
- `.xml`: [metadatos geoespaciales](https://en.wikipedia.org/wiki/Geospatial_metadata)
- `.cpg`: codificación de caracteres
- `.sbn` y `.sbx`: índices espaciales para acelerar lectura

::::::::::::::::::::::::::::::::::::: challenge

## Ejercicio 2 - Responde a la encuesta

Q: ¿Cuál es la diferencia entre los formatos ráster y vectorial?

1. El formato vectorial almacena imágenes en escala de grises, mientras que el ráster utiliza colores reales.
2. El formato ráster divide el espacio en celdas con valores numéricos; el vectorial representa objetos mediante coordenadas como puntos, líneas y polígonos.
3. El formato ráster divide el espacio en celdas; el vectorial representa el área mediante píxeles agrupados en formas.


:::::::::::::::: solution

La respuesta correcta es:

2. El formato ráster divide el espacio en celdas con valores numéricos; el vectorial representa objetos mediante coordenadas como puntos, líneas y polígonos.

Formato ráster:

- Representa el espacio como una matriz de celdas (píxeles).
- Cada celda tiene un valor numérico que puede representar, por ejemplo, la reflectancia en una banda espectral, la elevación, la temperatura, etc.
- Es útil para datos continuos, como imágenes satelitales o modelos de elevación.

Formato vectorial:

- Representa elementos espaciales como puntos (ej. estaciones meteorológicas), líneas (ej. ríos o rutas) y polígonos (ej. lagos o parcelas).
- Utiliza coordenadas geográficas para definir las ubicaciones exactas.
- Es ideal para datos discretos con límites bien definidos.

:::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::
