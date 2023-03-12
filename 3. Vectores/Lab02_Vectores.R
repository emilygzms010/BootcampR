################################################################################
###################     #LABORATORIO 02     ####################################
################################################################################
#=======================      Vectores      ====================================
#========================== Vector numérico ====================================
c(1, 2, 3, 5, 8, 13)
x <- c(12, 6, 67)
y <- c(2, 13)
y

#========================== Character ==========================================

c("arbol", "casa", "persona")

caracteres <- c("Madrid", "Barcelona", "Pontevedra", "Murcia")
class(caracteres) 

#=========================== Logical ===========================================
c(TRUE, TRUE, FALSE, FALSE, TRUE)

logico <- c(TRUE, TRUE, FALSE, TRUE)
class(logico)


#=========================== Mezcla ===========================================
mezcla <- c(TRUE, "Correcto", 8, 2.2)
mezcla # "TRUE" "Correct"  "8"  "2.2"

class(mezcla)  # "character"
typeof(mezcla) # "character"

#===================  Nombrar vectores en R ====================================
#===============================================================================
# También puedes nombrar los elementos de los vectores. Para ese propósito, 
# simplemente elige un nombre para cada componente o solo para algunos de ellos.
#===============================================================================

mi_vector <- c(naranja = 4, manzana = 6)
mi_vector

##============================================================================
# Si ya has creado el vector, puedes usar la función setNames de la siguiente #
# manera para poner nombre a los componentes:                                 #
#=============================================================================
p<-c(2,10)
setNames(p, c("naranja", "manzana"))


#===================  Ordenando vectores =======================================
#   La función sort
#===============================================================================
# Para ordenar un vector, puedes llamar a la función sort pasando como  
# argumento el vector. Por defecto, la función ordena de forma ascendente.
#===============================================================================
z <- c(12, 15, 3, 22)
sort(z)
# También puedes ordenar los datos en orden decreciente estableciendo el 
# argumento decreasing como TRUE:
sort(z, decreasing = TRUE)



#     La función order
# Orden creciente
z[order(z)]  # Equivalente a sort(z)

# Orden decreciente
z[order(-z)] # Equivalente a sort(z, decreasing = TRUE)


#===========  Invertir el orden de un vector  =================================

# Invirtiendo el orden de un vector
rev(z)


#===================  Concatenar vectores ======================================
#===============================================================================
# Unir dos o más vectores es tan fácil como crear uno. De hecho, solo 
# necesitas llamar a la función c y pasar los vectores como argumentos  
# para concatenar un vector a otro..
#===============================================================================

a <- c(1, 2, 3)
b <- c(4, 5, 6)
c(a, b)

#Es necesario destacar que el orden de los elementos es relevante.
#Los vectores se concatenarán según el orden de entrada:

c(b, a)



#===================  Crear un vector vacío en R  ==============================
#===============================================================================
# Unir dos o más vectores es tan fácil como crear uno. De hecho, solo 
# necesitas llamar a la función c y pasar los vectores como argumentos  
# para concatenar un vector a otro..
#===============================================================================

# Vector vacío
mi_vector <- c()

# Llenando el vector con un bucle
for(i in 1:10) {
  mi_vector[i] <- i
}

mi_vector

#Si quieres llenar un vector vacío, es más eficiente preasignar memoria 
#creando un vector (por ejemplo con valores NA) de la longitud del vector
#final, o usando la función vector.

# Preasignamos memoria
my_vector <- rep(NA, 5)
my_vector <- vector(length = 5)

# Llenamos el vector mediante un bucle for
for(i in 1:5) {
  my_vector[i] <- i
}

# En este caso no se va a notar la diferencia, sin embargo, para tareas más 
# costosas la reducción del tiempo de ejecución puede ser notable.


#=================== Comparando dos vectores  ==============================
#===============================================================================
# Existen varias formas de comparar vectores en R. Por una parte podemos 
# comparar los elementos uno a uno con algún operador lógico. Ten en cuenta
# que si un vector es mayor que otro el número de elementos tienen que ser
# múltiplos entre ellos o surgirá un error.
#===============================================================================
x1 <- c(1, 5)
y1 <- c(4, 0)
x1> y1 # FALSE TRUE

x1 <- c(1, 5)
y2 <- c(4, 0, 1, 3)

# Esto compara 1 > 4, 5 > 0, 1 > 1 y 5 > 3
x1 > y2 # FALSE TRUE FALSE TRUE

x2 <- c(1, 5, 1)
y2 <- c(4, 0, 1, 3)
x2 > y2 # Error

#También podemos comprobar si los elementos del primer vector están contenidos en el segundo con %in%.

x2 %in% y2 # TRUE FALSE TRUE

#Otra opción es devolver los elementos comunes entre el primer vector y el segundo:

# Devolvemos los elementos comunes
x2[x2 %in% y2] # 1 1

#Por último podríamos comparar si todos los elementos del primer vector están
#en el segundo con la función all de la siguiente manera:

x_1 <- c(1, 5)
y_1 <- c(4, 5, 1, 3)

all(x_1 %in% y_1) # TRUE

#=================== Sequencia de números en R  ==============================
#===============================================================================
# En R se pueden crear secuencias de números de distintas maneras. Entre ellas,
# puedes utilizar el operador : o las funciones seq y rep.
#===============================================================================
# Secuencia de 1 a 4 con números enteros
1:4
# 1 2 3 4

# Sequencia de 1 a 4 con pasos de 0.5
seq(1, 4, 0.5)
# 1.0 1.5 2.0 2.5 3.0 3.5 4.0

# Sequencia de tamaño 9 desde 1 hasta 5
seq(from = 1, to = 5, length.out = 9)
# 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0

# Repite el numero uno cinco veces
rep(1, 5)
# 1 1 1 1 1

#===================    Vector aleatorio    ==============================
#===============================================================================
# En R hay varias funciones para lidiar con la generación de números aleatorios.
#La función sample permite crear secuencias aleatorias. En el siguiente código 
#simulamos 5 lanzamientos (5 es el tamaño muestral) de un dado (6 resultados 
#posibles).
#===============================================================================

#muestra desde 1 a 6 de 5 datos
sample(1:6, size = 5, replace = TRUE) 

#También puedes utilizar las funciones runif o rnorm, que generan secuencias 
#aleatorias de números a través de las distribuciones Uniforme y Normal,
#respectivamente.
# Valores normales

#tamaño 5, media 0 y varianza 1
rnorm(5, mean = 0, sd = 1)
# -1.5611892 -0.2540665 -1.9912821 0.3040152 -1.4899171

# Valores uniformes
#tamaño 5, valor minimo 2, valor maximo de 10
runif(5, min = 2, max = 10)
# 8.929246 8.610883 7.686587 7.495158 3.771902

#Nota sobre la generación de números aleatorios. Al generar números aleatorios,
#obtendrás valores diferentes cada vez que ejecutes el comando, por lo que tus 
#resultados anteriores serán diferentes a los nuestros. Para configurar la 
#semilla del generador de números aleatorios de R para hacer un ejemplo 
#reproducible, primero debes llamar a la función set.seed y establecer 
#la semilla inicial.
set.seed(1) # Puedes elegir cualquier otro número entero como semilla

# Valores normales
rnorm(5, mean = 0, sd = 1)
# -0.6264538  0.1836433  -0.8356286  1.5952808  0.3295078

# Valores uniformes
runif(5, min = 2, max = 10)
# 3.647797 3.412454 7.496183 5.072830 8.158731



#=================== Contar elementos de un vector en R ==========================
#===============================================================================
#Puedes obtener la longitud de determinado vector con la función length. 
#La longitud de un vector es el número de componentes o la cantidad 
#de datos dentro del mismo.
#===============================================================================

mis_datos <- c("vector", "secuencia", "rnorm", "runif")

n <- length(mis_datos)

# Longitud del vector
n # 4

#===============   Acceder a elementos de un vector   ==========================
#===============================================================================
#Acceder a elementos de un vector permite acceder a elementos únicos, 
#como el primer o último valor, obtener un subconjunto del vector, así 
#como reemplazar, cambiar o eliminar algunos elementos. Esto se puede 
#realizar mediante índices númericos o lógicos.
#===============================================================================

#Índice numérico para acceder a elementos
#Para acceder a los elementos de un vector, puedes indicar entre corchetes el
# subíndice del elemento o elementos del vector correspondiente (entero positivo)


#Cuando accedas a posiciones ‘negativas’, se entiende que deseas 
# acceder a todas las posiciones excepto las indicadas con el signo menos.

# Considera las letras dadas por la función letters.
letras <- letters
letras
#En el siguiente bloque de código se dan algunos ejemplos para acceder a diferentes datos.

# Primer elemento
letras[1]

# Primer elemento, simplificando la clase de salida
letras[[1]]

# Tercer y cuarto elemento
letras[c(3, 4)]

# Letras 'pares'
letras[seq(2, n, 2)]

# Letras 'impares'
letras[seq(1, n, 2)]
letras[-seq(2, n, 2)] # Equivalente


# Índice lógico para acceder a elementos
#Otra posibilidad es usar un vector lógico. En este caso se accederá a las posiciones 
#con valor TRUE. Veamos un ejemplo con la temperatura máxima mensual de una ciudad española en 2017.


temp <- c(22.52, 18.70, 19.61, 22.79, 29.38, 30.19,
          33.16, 36.97, 33.29, 28.98, 24.31, 22.43)

mes <- c("enero", "febrero", "marzo", "abril", "mayo", "junio",
         "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre")


# Como ejemplo, ahora puedes buscar los meses con valores superiores a 30

# Meses con temperaturas máximas mayores que 30 grados
mes[temp > 30] 

# También puedes combinar las condiciones lógicas.

# Meses con temperatura máxima menor a 20 grados o superior a 35
mes[temp < 20 | temp > 35]  

#Agregar valores a vectores en R

#Ahora agregaremos la letra ‘ñ’ al vector de letras que creamos antes. 
#En primer lugar, necesitamos encontrar la letra anterior (o la siguiente) 
#en el alfabeto. En este caso buscaremos la letra ‘n’ y colocaremos la ‘ñ’ 
#justo después. Podemos hacer uso de la función which para buscar el índice 
#del elemento correspondiente a la letra ‘n’.

# Buscando el índice
n1 <- which(letras == "n")
n1 # 14

m1 <- which(letras == "a")
m1

#Con una sola línea de código puedes concatenar los caracteres.
c(letras[1:n1], "ñ", letras[-(1:n1)])

#En caso de que desees agregar el elemento al principio o al final del vector,
#simplemente usa la función c en el orden correspondiente.

# Añadiendo la letra 'ñ' al principio del vector
c("ñ", letras)

# Añadiendo la letra 'ñ' al final del vector
c(letras, "ñ")


#¿Cómo borrar un vector en R?

#Puedes eliminar un vector en R con la función rm o asignarle otro valor, como NULL.

mi_vector <- c(1, 2, 5, 6, 7)

# Con la función rm
rm(mi_vector)

# Sobrescribiendo el vector con otro valor
mi_vector <- 0

# Asignando NULL
mi_vector <- NULL

## Borrar elemento de un vector
# Si quieres eliminar solo algunos valores específicos de un vector, 
# puedes usar el signo - e indicar los índices del vector que no quieres 
# conservar. Veamos algunos ejemplos:

vector <- c("Londres", "Nueva York", "Paris")

# Eliminando 'Londres'
vector[-1] # "Nueva York" "Paris"
vector[which(vector != "Londres")]  # Equivalente
vector[-which(vector == "Londres")] # Equivalente 

#*******************************************************************************
#========================== Ejemplo  ==========================================
# crear vector carácter con nombre de las películas
name <- c("Toy story", "Toy story 2: los juguetes vuelven a la carga", "Toy story 3",
          "Toy story 4")
# crear vector numérico con puntuación de las películas
puntuacion <- c(8.3, 7.9, 8.3, 7.7)

# crear vector lógico sobre si la película es posterior a 2015
posterior_2000 <- c(FALSE, FALSE, TRUE, TRUE)

# seleccionar la tercera película
name[3]

# seleccionar la primera y la última película
name[c(1, 4)]

# seleccionar todas menos la tercera película
name[-3]

# crear condición lógica
puntuacion_baja <- puntuacion < 7

# mostrar condición para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de películas con puntuaciones bajas
name[puntuacion_baja]

# sumar 2 a la puntuación
puntuacion + 2

# dividir la puntuación entre 2

puntuacion/2


#=============================================================#
#===                 DESAFIO                        ==========#
#=============================================================#

# crea una funcion Puntuacion1 con los valores de tu preferencia
#puntuacion1_(coloca tu nombre) <- c()

puntuacion_Emily <- c(9, 9.5, 8.7, 10)

# calcular diferencia entre puntuaciones

diferencia <- puntuacion_Emily - puntuacion

# calcular la longitud del vector puntuacion1_(coloca tu nombre)

length(puntuacion_Emily)

# calcular el promedio del vector puntuacion1_(coloca tu nombre)

mean(puntuacion_Emily)

#*******************************************************************************