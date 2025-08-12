---
title: Preparación
---

## Credenciales NASA Earthdata Cloud

Para poder participar de las actividades prácticas, vas a necesitar crear tu cuenta en el sistema de [NASA Earthdata](https://urs.earthdata.nasa.gov/). Podés seguir este tutorial paso a paso para hacerlo: [http://tiny.cc/credenciales_NASA](http://tiny.cc/credenciales_NASA).

Recordá guardar tus **credenciales (usuario y contraseña) y tenerlas a mano durante el taller**, ya que las vas a necesitar para acceder a los datos desde la nube.

## Uso del Hub de 2i2c

El hub de 2i2c es una plataforma basada en [JupyterHub](https://jupyter.org/hub), diseñada para ofrecer entornos de computación reproducibles en la nube. Permite a personas usuarias trabajar con herramientas como Jupyter Notebooks, RStudio o VS Code, sin necesidad de instalar software localmente.

Cada hub es personalizado para una comunidad específica, con acceso controlado y preconfigurado con los paquetes, librerías y datos necesarios para trabajar.

Este entorno facilita la enseñanza y el aprendizaje de ciencia de datos, programación y teledetección sin barreras técnicas, promoviendo prácticas reproducibles y abiertas.

Aquí encontrarás las instrucciones para iniciar sesión en la nube con la plataforma proporcionada por 2i2c para este tutorial.

**Importante:** No podrás completar este paso hasta el día que inicie el tutorial (ese día recibirás la contraseña).

--------------

### Iniciar sesión en el hub


Para iniciar sesión en el JupyterHub proporcionado por 2i2c:

1. Navega hasta el Hub de 2i2c: Tu navegador web debe apuntar a [este enlace](https://climaterisk.opensci.2i2c.cloud).
2. Inicia sesión con tus credenciales:
    - **Nombre de usuario:** Puedes elegir cualquier nombre de usuario que desees. Sugerimos que utilices tu nombre de usuario de GitHub para evitar conflictos.
    - **Contraseña:** Recibirás la contraseña el día que inicie el tutorial.

![](fig/2i2c_login.png)

::: callout

El proceso de inicio de sesión puede tardar unos minutos, especialmente si es necesario crear un nuevo espacio de trabajo virtual solo para ti.

:::

Al iniciar sesión en https://climaterisk.opensci.2i2c.cloud se clonará automáticamente un repositorio para trabajar. Si el inicio de sesión es exitoso, verás la siguiente pantalla y estarás listo para empezar a trabajar.

![](fig/hub_startup.png)


3. Ejecuta todas las celdas de la notebook `startup.ipynb`. Esto generará todas las notebooks que necesitas para poder seguir el tutorial. 


![](fig/hub_startup2.png)

::: callout

Puede tardar unos segundos, ¡así que paciencia! Si aparece un aviso de que la notebook está ocupada, es normal.

:::


4. Vincula tu usuario de hub con tus credenciales de NASA Earthdata. Para eso debes acceder a la notebook 02_Configuración_y_Verificacion_del_Entorno y ejecutar todas las celdas. 

- `book/`
  - `es/`
    - `ipynb/`
      - `00_Introduccion_Configuracion/`
        - `02_Configuración_y_Verificación_del_Entorno.md`
        

![](fig/configuracion_1.png)

![](fig/configuracion.png)


5. Te preguntará si quieres proceder a sobrescribir el archivo .netrc. Confirma que sí ingresando `S` y presionando `enter`.

![](fig/netrc.png)

6. Ingresa tus credenciales de NASA Earthdata (usuario y contraseña). Si todo funcionó correctamente, se te indicará que el archivo .netrc con tus credenciales se configuró correctamente. 

7. Finalmente, ingresa a la notebook sobre la que estaremos trabajando:


- `book/`
  - `es/`
    - `ipynb/`
      - `05_Casos_de_Estudio/`
        - `05_Deforestacion_en_Maranhão.md`
        

![](fig/defor.png)

