---
title: 'Caso de Estudio'
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

# Deforestación en 

La Amazonía es una de las regiones más biodiversas del planeta y un componente clave del sistema climático global que además sostiene múltiples comunidades indígenas. En particular el estado de Maranhão, en Brasil, es uno de los focos más críticos de deforestación en el país. Se estima que el 76 % de la cobertura original de bosque amazónico en este estado ha sido destruida. Según Global Forest Watch, Maranhão ha registrado una de las tasas más altas de pérdida de cobertura boscosa en Brasil en los últimos años, impulsada por incendios, expansión agropecuaria y tala ilegal. Estos procesos están estrechamente ligados a la fragmentación ecológica, la pérdida de biodiversidad y la violencia hacia comunidades indígenas. Frente a este escenario, el monitoreo sistemático de los cambios en la cobertura vegetal es fundamental. Los productos OPERA DIST-HLS, derivados principalmente de Landsat (NASA/USGS) y Sentinel-2 (ESA), ofrecen una herramienta poderosa para detectar disturbios recientes y aportar evidencia clave para la conservación y la formulación de políticas públicas basadas en datos.

<figure style="text-align: center;">
  <img src="https://tse3.mm.bing.net/th/id/OIP.sSfdF5nBFUWbh3UImdbyVgHaE7?pid=Api" alt="Buriticupu - erosión" style="max-width: 100%; height: auto;">
  <figcaption style="font-size: 0.9em; color: #555;">Foto: AFP / El País (2023)</figcaption>
</figure>

## Ruta de trabajo

Nuestro objetivo es evaluar la deforestación en un area cercana a la ciudad de Buriticupu en el estado Maranhao. 
Para eso en esta notebook vamos a :

1. Filtrar y seleccionar los productos OPERA DIST-ALERT desde la nube
2. Visualizar y explorar los subproductos VEG_DIST_STATUS
3. Gráficar la evolución del disturbio a lo largo del tiempo.
4. Generar un mapa de disturbios
5. Explorar subproducto VEG_DIST_DATE

````python

#librerias para manipulación de datos
from warnings import filterwarnings #suprime los warning
filterwarnings('ignore')
import numpy as np, pandas as pd, xarray as xr
import rioxarray as rio
import rasterio

 ````