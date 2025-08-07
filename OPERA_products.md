---
title: 'NASA Earthdata Cloud y productos OPERA'
teaching: 50
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

1. ¿Cómo podemos acceder a productos satelitales de OPERA mediante la plataforma Earthdata?
2. ¿Qué tipo de información brindan los productos OPERA, en particular los productos DSWx?
3. ¿Cómo utilizar la API de PySTAC para automatizar búsquedas y análisis de datos geoespaciales?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Conocer las plataformas de la NASA para acceso a datos satelitales.
- Entender la estructura y contenido de los productos OPERA.
- Utilizar PySTAC para realizar búsquedas programáticas de datos espaciales y generar visualizaciones.


::::::::::::::::::::::::::::::::::::::::::::::::


## NASA Earthdata

La plataforma [NASA Earthdata](https://www.earthdata.nasa.gov/) brinda acceso a una gran cantidad de datos de observación terrestre recolectados por la NASA. Abarca diversas disciplinas como atmósfera, criósfera, superficie terrestre, agua, suelos y más. Estos datos, en su mayoría abiertos y gratuitos, se pueden explorar en forma de productos generados a partir de sensores satelitales como MODIS, Landsat, y Sentinel.

El sistema busca facilitar el acceso, visualización y análisis de datos para la comprensión del planeta. En este curso nos centraremos en un conjunto específico de productos derivados: los productos OPERA DIST, disponibles en la nube.


## Productos OPERA

OPERA (Observational Products for End-Users from Remote Sensing Analysis) es una iniciativa de la NASA que genera productos de datos derivados de sensores ópticos y radar de satélites como Sentinel-1 A/B, Sentinel-2 A/B y Landsat-8/9. En lugar de ofrecer imágenes crudas, OPERA proporciona datos procesados que clasifican áreas del territorio según ciertas características físicas como presencia de agua, alteraciones en la vegetación o cambios en la superficie.

Los productos se publican en formatos ráster y están organizados como mosaicos georreferenciados. Los productos OPERA relacionados con la superficie terrestre incluyen:

- **DIST** (Land Surface Disturbance): registra alteraciones de la superficie terrestre.
- **DSWx** (Dynamic Surface Water Extent): registra la extensión de cuerpos de agua.

En este tutorial nos enfocaremos en **DIST ALERT**, diseñada para detectar cambios recientes en la vegetación como los causados por deforestación o incendios.



## Producto OPERA DIST

Los productos DIST mapean la _perturbación de la vegetación_ (en concreto, la pérdida de cubierta vegetal por píxel HLS siempre que haya una disminución indicada) a partir de escenas armonizadas Landsat-8 y Sentinel-2 A/B (HLS). Una de las aplicaciones de estos datos es cuantificar los daños causados por los _incendios forestales_. El producto DIST_ALERT se publica a intervalos regulares (al igual que las imágenes HLS, aproximadamente cada 12 días en un determinado mosaico/región). El producto DIST_ANN resume las mediciones de las alteraciones a lo largo de un año.

Los productos DIST cuantifican los datos de reflectancia de la superficie (RS) (en inglés, Surface Reflectance, SR) adquiridos a partir de imágenes terrestres operacionales _Operational Land Imager_ (OLI) (en español, Generador de Imágenes Terrestres Operacional) a bordo del satélite de teledetección Landsat-8 y del _Multi-Spectral Instrument_ (MSI) (en español, Instrumento Multiespectral) a bordo del satélite de teledetección Sentinel-2 A/B. Los productos de datos HLS DIST son archivos de tipo ráster, cada uno de ellos asociado a mosaicos de la superficie terrestre. Cada mosaico se representa mediante coordenadas cartográficas proyectadas alineadas con el [Sistema de Referencia de Cuadrículas Militares (MGRS, por sus siglas en inglés de _Military Grid Reference System_)](https://en.wikipedia.org/wiki/Military_Grid_Reference_System). Cada mosaico se divide en 3,660 filas y 3,660 columnas con un espaciado de píxeles de 30 metros (así que un mosaico es de $109.8\,\mathrm{km}$ largo en cada lado). Los mosaicos vecinos se solapan 4.900 metros en cada dirección (los detalles se describen detalladamente en la [especificación de producto DIST](https://d2pn8kiwq2w21t.cloudfront.net/documents/OPERA_DIST_HLS_Product_Specification_V1.pdf)).

Los productos OPERA DIST se distribuyen como [GeoTIFFs optimizados para la nube](https://www.cogeo.org/); en la práctica, esto significa que las diferentes bandas se almacenan en archivos de formato TIFFs (TIFF, por sus siglas en inglés, _Tagged Image File Format_) distintos. La especificación TIFF permite el almacenamiento de matrices multidimensionales en un único archivo. El almacenamiento de bandas distintas en diferentes archivos TIFF permite que estos se descarguen de forma independiente.

### Bandas

Los archivos DIST-ALERT contienen diferentes bandas, entre ellas:

- **VEG_ANOM_MAX**: Para cada píxel, se trata de un valor entre 0% y 100% que representa la diferencia porcentual entre la cobertura vegetal que se observa actualmente y un valor de referencia histórico. Es decir, un valor de 100 corresponde a una pérdida total de vegetación en un píxel (100%) y un valor de 0 corresponde a que no hubo pérdida de vegetación. 255 representa un valor faltante. 
- **VEG_DIST_DATE**: Fecha (como número de días desde el 31/12/2020) en que se detectó la primera alteración. Permite observar la progresión de un evento como un incendio. En esta banda en particular, el valor 0 indica que no ha habido alteraciones en el último año y -1 es un valor que indica que faltan datos. Cualquier valor positivo es el número de días desde el 31 de diciembre del 2020 en los que se midió la primera alteración en ese píxel.
- **VEG_DIST_STATUS**: Estado de la alteración en la vegetación:
    - **0:** Sin alteración
    - **1:** Alteración provisional (**primera detección**) con cambio en la cubierta vegetal < 50%
    - **2:** Alteración confirmada (**detección recurrente**) con cambio en la cubierta vegetal < 50%
    - **3:** Alteración provisional con cambio en la cobertura vegetal ≥ 50%
    - **4:** Alteración confirmada con cambio en la cobertura vegetal ≥ 50%
    - **255**: Datos no disponibles


Cada banda permite analizar diferentes aspectos del cambio en la cobertura vegetal, siendo útiles para estudios ambientales, evaluación de daños por incendios, y seguimiento de transformaciones del uso del suelo.


