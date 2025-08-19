---
title: 'Fundamentos de teledetección'
teaching: 40
exercises: 1
---

:::::::::::::::::::::::::::::::::::::: questions 

- ¿Qué es la teledetección y cómo se diferencia de otros métodos de observación?
- ¿Qué es la radiación electromagnética y por qué es clave en la teledetección?
- ¿Qué es una imagen satelital y cómo se interpretan sus componentes?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Definir qué es la teledetección y explicar su relevancia para el estudio ambiental.
- Comprender el rol de la radiación electromagnética y el espectro electromagnético en la obtención de datos satelitales.
- Identificar los componentes básicos de una imagen satelital y cómo se estructuran los datos en píxeles y bandas.

::::::::::::::::::::::::::::::::::::::::::::::::

## ¿Qué es la teledetección?

La **teledetección** es el proceso mediante el cual se obtiene información sobre un objeto, una superficie o un fenómeno **sin necesidad de estar en contacto directo con él**. En el contexto del análisis ambiental, esto se logra a través del uso de sensores montados en plataformas como satélites, drones o aviones, que capturan datos sobre la Tierra desde una distancia considerable.

A diferencia de otros métodos de observación directa, la teledetección permite recopilar datos **de forma remota, frecuente y sistemática**, lo cual la convierte en una herramienta fundamental para estudiar el planeta en diferentes escalas espaciales y temporales. Esto es especialmente valioso en regiones de difícil acceso o para observar procesos que ocurren a gran escala, como la deforestación o las inundaciones.


## ¿Qué es la radiación electromagnética y por qué es clave?

La **radiación electromagnética (REM)** es el **medio fundamental a través del cual los sensores remotos obtienen información del entorno**. Esta radiación consiste en la propagación de campos eléctricos y magnéticos que transportan energía a través del espacio.

Todos los objetos cuya temperatura está por encima del cero absoluto emiten radiación electromagnética en mayor o menor medida. Esta energía puede ser **reflejada, absorbida o emitida** por la superficie terrestre, y los sensores de teledetección registran esas variaciones.

La REM se organiza en lo que se conoce como el **espectro electromagnético**, que abarca desde ondas de radio de baja frecuencia hasta rayos gamma de alta energía. 

Los satélites llevan instrumentos o sensores que miden la radiación electromagnética reflejada o emitida por fuentes tanto terrestres como atmosféricas. Con instrumentos calibrados, los científicos pueden medir la altura, la temperatura, el contenido de humedad (y más) para casi todos los atributos de la atmósfera, hidrosfera, litosfera y la biosfera de la Tierra. Sin embargo, los sensores remotos capturan solo ciertas regiones del espectro (por ejemplo, el visible, el infrarrojo y las microondas), dependiendo del tipo de aplicación.

![](fig/REM.svg)


Comprender cómo interactúa la REM con distintos tipos de superficies —agua, vegetación, suelo, construcciones— es esencial para poder interpretar correctamente las imágenes y datos satelitales.


## ¿Qué es una imagen satelital?

Una **imagen satelital** es una representación digital de una porción de la superficie terrestre, generada a partir de la información registrada por sensores remotos.

![](fig/imagen.png)

Estos sensores capturan datos en **ciertas longitudes de onda del espectro electromagnético (EEM)**. Por eso, cada imagen corresponde a una **banda espectral**, y cada píxel de la imagen contiene un **valor numérico** que representa la **intensidad de la energía reflejada** por una unidad mínima de superficie en esa banda específica.

Los datos se organizan en una **matriz bidimensional** de filas × columnas, donde cada celda representa un píxel. Ese valor de píxel indica la **reflectancia promedio** registrada por el sensor en esa porción del terreno.

Cuando se visualiza una imagen de una sola banda, esta suele representarse en **escala de grises**:

- **Blanco:** indica **alta reflectancia** (mayor energía reflejada).
- **Negro:** indica **baja reflectancia** (menor energía reflejada).

Este gradiente continuo permite distinguir diferencias en la respuesta espectral de los distintos objetos o superficies.

### Tipos de imágenes satelitales

Dependiendo de cuántas bandas espectrales se capturan y cómo se combinan, las imágenes pueden clasificarse en:

- **Monoespectral:** contiene datos de una sola banda (por ejemplo, solo la banda del rojo). Se visualiza generalmente en escala de grises.
- **Multiespectral:** combina varias bandas (habitualmente entre 3 y 10), como las del espectro visible (rojo, verde, azul) y el infrarrojo cercano. Permiten generar composiciones de color para distintos análisis (por ejemplo, vegetación, agua, suelo desnudo).
- **Hiperespectral:** contiene decenas o cientos de bandas muy estrechas del espectro, lo que permite una mayor precisión en la identificación de materiales, tipos de cobertura o condiciones ambientales.

![Imagen multiespectral](fig/imagen_multiespectral.png)


## 🛰️ Satélites y sensores

Los **satélites** transportan a bordo **sensores remotos**, que son los instrumentos encargados de captar la energía electromagnética reflejada o emitida por la superficie terrestre. Al conjunto de sensores más la plataforma satelital que los contiene se lo denomina **sistema satelital**.

Actualmente, se estima que hay alrededor de **12.000 satélites activos** orbitando nuestro planeta (Jonathan's Space Pages, 2025), muchos de ellos utilizados para observación de la Tierra.

## Sensores remotos

Los sensores pueden estar montados en diferentes **plataformas**, como satélites, drones, aviones o globos. Según el tipo de energía que utilizan, se clasifican en:

- **Sensores pasivos**: miden la energía radiante natural reflejada o emitida por la Tierra. Por ejemplo, los sensores ópticos que utilizan la luz solar como fuente.
- **Sensores activos**: emiten su propia señal (como radar o láser) y miden el rebote de esa señal. Funcionan incluso de noche o con nubosidad.  Ejemplos: Sentinel-1 (radar), GPM GMI (microondas), Landsat OLI/TIRS (infrarrojo térmico).

![Sensores pasivos y activos](fig/sensores.jpg)

### Tipos de plataformas

Según el tipo de órbita o el medio en que se transportan, las plataformas pueden ser:

- **Satélites de órbita polar o heliosincrónica**: observan toda la superficie terrestre en franjas, pasando por cada punto a la misma hora solar local.  
 Ejemplos: **Landsat**, **Sentinel-2**, **MODIS**.
- **Satélites geoestacionarios (geosincrónicos)**: se ubican a unos 36.000 km de altura y permanecen sobre el mismo punto del planeta. Son ideales para monitoreo meteorológico en tiempo real.
- **Drones y aviones**: operan a escala local y permiten obtener imágenes de alta resolución espacial, útiles para estudios detallados.

### ¿Qué mide un sensor remoto?

Cada sensor capta la energía reflejada en determinadas longitudes de onda del espectro electromagnético, organizando los datos en forma de **matriz de píxeles** (filas × columnas). Cada píxel representa una unidad mínima de superficie (por ejemplo, 10 × 10 m) y contiene un valor numérico que indica la reflectancia promedio en una determinada banda espectral.

###  Características técnicas: resoluciones

Las imágenes satelitales presentan diferentes **resoluciones**, que determinan su nivel de detalle y periodicidad. Estas dependen en parte del sensor, del satélite o de ambos:

| Tipo de resolución     | Qué mide                                                | Ejemplo                              |
|------------------------|----------------------------------------------------------|--------------------------------------|
| Espacial               | Tamaño del píxel en el terreno                           | 10 m (Sentinel-2), 30 m (Landsat-8)  |
| Temporal               | Frecuencia de observación de la misma zona               | Cada 5 días (Sentinel-2)             |
| Espectral              | Número y ancho de las bandas espectrales captadas        | 13 bandas (Sentinel-2)               |
| Radiométrica           | Capacidad para discriminar diferencias de intensidad     | 8 bits (256 niveles) o más           |

### Ancho de barrido y resolución espacial


- **Ancho de la franja de barrido**: es el ancho máximo de la superficie observada por el sensor. Depende del ángulo de observación.
- **Resolución espacial**: es el tamaño de cada píxel. Determina el nivel de detalle.

![Ancho del barrido y resolución espacial](fig/barrido.png)

Estas características están inversamente relacionadas: cuanto mayor la resolución espacial (píxeles más pequeños), menor el ancho de barrido (área cubierta en una pasada).

📌 *Ejemplo*: Sentinel-2 tiene una resolución espacial de 10 m y cubre un ancho de barrido de 290 km. SAOCOM, en cambio, tiene resolución de hasta 10 m pero menor cobertura por pasada.




::::::::::::::::::::::::::::::::::::: challenge

## Ejercicio 1 - Responde a la encuesta

Q: ¿Qué es una imagen satelital?

1. Una fotografía convencional tomada desde el espacio.
2. Una matriz de colores RGB que representa la temperatura de la atmósfera.
3. Una matriz de valores numéricos que representan la energía reflejada por cada unidad de superficie. 

:::::::::::::::: solution

3. Una matriz de valores numéricos que representan la energía reflejada por cada unidad de superficie.

Una imagen satelital no es simplemente una fotografía, sino una representación digital de datos captados por sensores remotos montados en satélites u otras plataformas. Cada imagen está compuesta por una matriz de píxeles, donde cada píxel contiene un valor numérico que representa la cantidad de energía electromagnética reflejada o emitida por una pequeña porción de la superficie terrestre en una determinada longitud de onda (o banda espectral).
Estos valores numéricos no son colores en sí mismos, sino medidas cuantitativas de radiancia o reflectancia, que luego pueden visualizarse en escala de grises (una sola banda) o combinarse en falsas composiciones de color (por ejemplo, usando el infrarrojo cercano, el rojo y el verde).
Por eso decimos que una imagen satelital es, en esencia, un conjunto de datos científicos que describe el estado físico de la superficie terrestre (como la vegetación, el agua, el suelo o las construcciones) en función de cómo interactúa con la radiación solar.
Este tipo de información es clave para monitorear cambios ambientales, realizar mapas temáticos y detectar fenómenos como deforestación, incendios, inundaciones o urbanización.

:::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::

