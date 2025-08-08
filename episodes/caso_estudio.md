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


# Deforestación en Maranhão

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

#librerias para visualización
import hvplot.pandas, hvplot.xarray
import geoviews as gv
from geoviews import opts
gv.extension('bokeh')

#configuración de acceso a datos geoespaciales desde la nube
from pystac_client import Client
from osgeo import gdal
gdal.SetConfigOption('GDAL_HTTP_COOKIEFILE','~/.cookies.txt')
gdal.SetConfigOption('GDAL_HTTP_COOKIEJAR', '~/.cookies.txt')
gdal.SetConfigOption('GDAL_DISABLE_READDIR_ON_OPEN','EMPTY_DIR')
gdal.SetConfigOption('CPL_VSIL_CURL_ALLOWED_EXTENSIONS','TIF, TIFF')

````

### 1. FILTRAR Y SELECCIONAR LOS PRODUCTOS OPERA DESDE LA NUBE

#### 1.a Seleccionar el area de estudio 

Usa la herramienta online: https://boundingbox.klokantech.com/

1. Busca la zona de interés y dibujar un rectángulo sobre el mapa.
2. En la sección "Copy & Paste", selecciona el formato "CSV".
3. Copia las coordenadas 

Estas coordenadas están en el orden correcto requerido por STAC:

`bbox = [xmin, ymin, xmax, ymax] = [long_oeste, lat_sur, long_este, lat_norte]`

Coordenadas copiadas de boundingbox -46.52993,-4.383815,-43.363075,-4.243793

````python

#Definir el AOI con las coordenadas 
AOI = [-46.52993,-4.383815,-46.363075,-4.243793]
rango_fechas = "2022-01-01/2024-03-31"

````
#### 1.b Explorar y buscar los productos OPERA DIST-ALERT

````

# Realizamos la búsqueda de productos OPERA DIST-ALERT para ver fechas disponibles
from pystac_client import Client

#parámetros de búsqueda
search_params = {
    "bbox": AOI,
    "datetime": rango_fechas,
    "collections": ["OPERA_L3_DIST-ALERT-HLS_V1_1"]
}

client = Client.open("https://cmr.earthdata.nasa.gov/stac/LPCLOUD/")
items = list(client.search(**search_params).get_items())

# Extraemos fechas disponibles
fechas = sorted({item.datetime.date() for item in items})
print(f"Fechas disponibles ({len(fechas)}):")
print(fechas)

````
