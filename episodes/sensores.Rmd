---
title: 'Sensores, plataformas y tipos de imágenes'
teaching: 50
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- ¿Qué tipos de sensores y plataformas satelitales existen y cómo funcionan?  
- ¿Qué diferencias existen entre imágenes monoespectrales y multiespectrales?  
- ¿Qué significan las resoluciones espacial, temporal, espectral y radiométrica?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Reconocer los tipos principales de sensores remotos (activos y pasivos) y las plataformas que los transportan (como los satélites Landsat y Sentinel).  
- Identificar las características técnicas clave de los sensores: resolución espacial, temporal, espectral y radiométrica.  
- Distinguir entre imágenes satelitales monoespectrales, multiespectrales e hiperespectrales.
  
::::::::::::::::::::::::::::::::::::::::::::::::

## 🛰️ Sensores remotos y plataformas satelitales

Los **sensores remotos** son instrumentos diseñados para captar la energía electromagnética reflejada o emitida por la superficie terrestre. Pueden estar montados en distintas **plataformas**, como satélites, drones, aviones o incluso globos.

Existen dos grandes tipos de sensores:

- **Sensores pasivos**: dependen de una fuente de energía externa (como el Sol) y miden la radiación reflejada o emitida por la superficie terrestre. Ejemplos: Landsat OLI, Sentinel-2 MSI.
- **Sensores activos**: generan su propia fuente de energía (por ejemplo, un pulso de microondas) y miden el rebote de esa señal. Ejemplos: radar, LiDAR, altímetros láser.

Los sensores se encuentran a bordo de plataformas satelitales como **Landsat**, **Sentinel**, **MODIS** o **SAOCOM**, cada una con características distintas en términos de frecuencia de observación, área cubierta y resolución.


### Plataformas: ¿Dónde están los sensores?

Los sensores pueden estar montados en:

- **Satélites de órbita polar** (ej. Landsat, Sentinel): cubren la Tierra en franjas, ideal para monitoreo global.
- **Satélites geoestacionarios:** se ubican sobre un punto fijo, útiles para observar fenómenos atmosféricos.
- **Drones y aviones:** brindan imágenes de alta resolución a escala local.

## ¿Qué es una imagen satelital?

Una imagen satelital es una **representación digital** de una porción de la superficie terrestre, generada a partir de la información registrada por los sensores. No es una fotografía convencional: es una **matriz de valores numéricos**, donde cada celda o **píxel** representa la intensidad de energía reflejada o emitida desde una unidad mínima de superficie.


#### Tipos de imágenes:

- **Monoespectral**: captura una sola banda (por ejemplo, solo el rojo).
- **Multiespectral**: combina varias bandas (habitualmente entre 3 y 10), como el visible y el infrarrojo cercano.
- **Hiperespectral**: contiene cientos de bandas muy estrechas, permitiendo una mayor precisión para distinguir materiales o tipos de cobertura.

### Resoluciones: ¿qué nivel de detalle tienen los sensores?

Los sensores remotos se caracterizan por distintas **resoluciones**, que determinan el tipo de información que pueden captar:

- **Resolución espacial**: tamaño del píxel en el terreno (por ejemplo, 10 m, 30 m). Cuanto menor es el valor, mayor el nivel de detalle.
- **Resolución temporal**: frecuencia con la que un sensor observa la misma zona. Ejemplo: Sentinel-2 revisita cada 5 días.
- **Resolución espectral**: cantidad y ancho de las bandas espectrales que captura un sensor.
- **Resolución radiométrica**: capacidad de un sensor para distinguir diferencias en la intensidad de la radiación (medida en bits, como 8 bits = 256 niveles).

Comprender estas características permite seleccionar el producto adecuado según el objetivo del análisis.

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

