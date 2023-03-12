################################################################################
###################     #LABORATORIO 05     ####################################
################################################################################
#======================  Data frame en R  ======================================
#data frames almacenan tipos de datos heterogéneos.

Producto <- c("Zumo", "Queso", "Yogurt","Manzana")
Seccion <- c("Bebidas", "Productos lácteos", "Productos lácteos","Frutas")
Unidades <- c(3, 2, 10,5)
#Puedes almacenar esas variables como matriz utilizando la función cbind:
x <- cbind(Producto, Seccion, Unidades)
x

#===================  creamos un data frame   ==================================
temp <- c(22.37, 19.56, 18.5, 21.95, 29.33, 28.19,
          35.38, 36.62, 40.03, 27.59, 22.15, 19.85)
humed <- c(89, 87, 80, 78, 80, 78,
             71, 69, 78, 82, 85, 84)
precip <- c(69, 33.9, 37.5, 36.6, 31.0, 16.6,
                     1.2, 6.8, 36.8, 30.8, 38.5, 22.7)
mes <- c("enero", "febrero", "marzo", "abril", "mayo", "junio",
         "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre")


# Para unir los datos puedes usar la función data.frame

datos <- data.frame(mes = mes, temperatura = temp, humedad = humed,
                    precipitaciones = precip)
names(datos) # Nombres de las variables (columnas)

#mostrar los primeros valores
# Primeras filas de nuestro conjunto de datos
head(datos)

#Resumen estadístico de las variables (columnas) 
summary(datos)

#=======    los data frames de ejemplo que R proporciona.
#data()
# podemos cargar cualquier data con 
#data(nombre_del_conjunto_de_datos)
data(AirPassengers)# ejemplo podemos cargar el dato de AirPassengers
AirPassengers

#===============================================================================
#================    Crear un data frame vacío en R   ==========================
#===============================================================================
#crear una estructura de datos vacía es utilizando la función data.frame
# Variables vacías
dataset <- data.frame(mes = character(),
                      temperatura = numeric(),
                      precipitaciones = numeric(),
                      humedad = numeric())


# Copiando la estructura de otro conjunto de datos
dataset <- datos[FALSE, ] # Recuerda que creamos el objeto 'datos' antes

# Convirtiendo una matriz en data.frame y asignándole nombres a las columnas
dataset <- data.frame(matrix(ncol = 4, nrow = 0))
nombres_columnas <- c("mes", "temperatura", "precipitaciones", "humedad")
colnames(dataset) <- nombres_columnas

# Equivalente a la última opción
dataset <- data.frame(matrix(ncol = 4, nrow = 0,
                             dimnames = list(NULL, c("mes", "temperatura",
                                                     "precipitaciones", "humedad"))))


#===============================================================================
###################   Accediendo a los datos del data frame  ###################
#===============================================================================
datos$mes
datos$humedad


#seleccionar varias variables a la vez
# Seleccionando las columnas 1 a 3 con una secuencia
datos[, 1:3]
# Seleccionando columnas con la función 'c'
datos[, c("mes", "temperatura")] # 1ra forma
datos[, c(1, 2)] # 2da forma


#puedes acceder a filas del data frame con datos[1, ] o datos[1:2, ]
# Observación de la primera fila y segunda columna
datos
datos[1,]
datos[1,2]
datos[2,3]
# Primera y segunda fila de la segunda columna
datos[1:2, 2]

#===========  Accediendo a los datos del data frame  ==========#
#La funcion attach
attach(datos)
temperatura # Ahora tenemos acceso directo a las variables
humedad
#Si quieres deshabilitar el acceso directo, solo tienes que usar la función detach: ---#

detach(datos)
temperatura # Ya no puedes acceder a esta variable. Aparecerá un error.
#===============================================================================


#===============================================================================
###################   Añadir columnas y filas a un data frame  #################
#===============================================================================
data(cars)
Head(cars)#ojo pq sale error?
head(cars)
#Agregamos dos nuevas columnas llamadas kph (kilómetros por hora) y meters (metros) con el siguiente código:  ---#
#kilómetro = milla/0.62137 y metro = pie/3.2808
cars$kph <- cars$speed / 0.62137
cars$meters <- cars$dist / 3.2808

#se puede hacer uso de la función cbind. Si quieres agregar una nueva fila, podrías usar la función rbind.  ---#

kph <- cars$speed / 0.62137
meters <- cars$dist / 3.2808
cars <- cbind(cars[, c(1, 2)], kph, meters)

#===============================================================================
################  Eliminar columnas y filas de un data frame  ##################
#===============================================================================

cars2 <- cars[, -c(1, 2)]
# Seleccionar solo las columnas que queremos conservar
cars2 <- cars[, c("kph", "meters")] 
head(cars2)
#===============================================================================
###########   Ordenando y filtrando datos de un data frame en R  ###############
#===============================================================================
#Ordenar data frames
data(mtcars)
head(mtcars)

ordenar_df <- order(mtcars$hp) # Índice de ordenación en base a la variable 'hp'

# Ordenando por 'hp' (de más bajo a más alto)
# Solo mostramos las primeras 4 columnas
head(mtcars[ordenar_df, 1:4]) 

#==== También puedes ordenar de mayor a menor haciendo uso del signo menos. ==#

ordenar_df <- order(-mtcars$hp)
head(mtcars[ordenar_df,])
#=====================================================
#======== Filtrar data frames =========#
#==========================================================
#consiste en obtener una submuestra que cumpla con algunas condiciones
subset(mtcars, cyl == 6 & hp > 115)#subset para crear subconjuntos
# mostramos las variables mpg, cyl y disp utilizando el argumento select ===#
subset(mtcars, cyl == 6 & hp > 115, select = c(mpg, cyl, disp))
# seleccionaremos los coches donde la variable wt es menor que 2 o la variable hp es mayor a 115. ---#
subset(mtcars, wt < 2 | hp > 115)

#======================================================================================
#=========  crear vector carácter con nombre de las películas    ======================
#======================================================================================

name <- c("Toy story", "Toy story 2: los juguetes vuelven a la carga", "Toy story 3",
          "Toy story 4")
# crear vector numérico con puntuación de las películas
puntuacion <- c(8.3, 7.9, 8.3, 7.7)

# crear vector lógico sobre si la película es posterior a 2000
posterior_2000 <- c(FALSE, FALSE, TRUE, TRUE)


# crear dataframe de vectores
peliculas_df <- data.frame(name,
                           puntuacion,
                           posterior_2000)
# mostrar dataframe
head(peliculas_df)
# cambiar nombre de dataframe
names(peliculas_df) <- c("NAME", "PUNTUACION","POSTERIOR_2000")

# mostrar dataframe 
peliculas_df

# seleccionar un elemento del dataframe
peliculas_df[3, 2]
peliculas_df[3, "PUNTUACION"]

# seleccionar más de un elemento del dataframe
peliculas_df[c(3,4), c(2,3)]
peliculas_df[c(3,4), c("PUNTUACION","POSTERIOR_2000")]
# seleccionar una fila o renglón del dataframe
peliculas_df[3,]

# seleccionar una columna del dataframe
peliculas_df[, 2]
peliculas_df[, "PUNTUACION"]

#=======================================================================
#1. Guardar los índices ordenados, que obtenemos con la función order()
#             order(dataframe$columna)
#2. Seleccionar el dataframe con los índices obtenido en el paso uno
#             Indice<- order(dataframe$columna)
#======================================================================

# mostrar el indice de la columna de puntuacion con order
order(peliculas_df$PUNTUACION)
# funcion order (menor a mayor)
orden_menor_mayor <- order(peliculas_df$PUNTUACION,
                           decreasing = FALSE)

# mostrar el dataframe ordenado
peliculas_df[orden_menor_mayor, ]

# funcion order (mayor a menor)
orden_mayor_menor <- order(peliculas_df$PUNTUACION,
                           decreasing = TRUE)

# mostrar el dataframe ordenado
peliculas_df[orden_mayor_menor, ]

# guardar el dataframe ordenado
df_ordenado <- peliculas_df[orden_mayor_menor, ]
df_ordenado



