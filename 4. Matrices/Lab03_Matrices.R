################################################################################
###################     #LABORATORIO 03     ####################################
################################################################################
#========================     MATRICES     =====================================
# En Rstudio es posible establecer el número de columnas o el número de filas 
# con los argumentos ncol y nrow, respectivamente.También se puede especificar  
# si la matriz está ordenada por filas o por columnas con el argumento byrow. 
# Por defecto, la función ordenará la entrada por columnas (byrow = FALSE).
#===============================================================================

data=c(1:18)
data
# Por columnas
matrix(data, ncol = 2, byrow = FALSE) # byrow = FALSE por defecto
matrix(data, ncol = 6, nrow = 3) # Equivalente
matrix(data, nrow = 3) # Equivalente

# Por filas
matrix(data, ncol = 2, byrow = TRUE)


#===============================================================================
x <- c(2, 7, 3, 6, 1)
y <- c(3, 7, 3, 5, 9)

# Por columnas
cbind(x, y)

# Por filas
rbind(x, y)

# Clase de la salida
class(cbind(x, y))  # "matrix"

# Tipo de dato de los elementos
typeof(cbind(x, y)) # "double"


# se debe de tener en cuenta que se puede usar cualquier tipo de datos 
# dentro de una matriz, siempre que sean homogéneos.

matrix(c(TRUE, TRUE, FALSE, TRUE), ncol = 2)
matrix(c("rojo", "verde", "naranja", "negro"), ncol = 2)

#===============================================================================
data1<- 11:30
#la función dim también se puede utilizar para crear una matriz en R.
dim(data1)<-c(4,5)
data1
#===============================================================================
A <- c(3, 1, 6, 1, 2, 9)
dim(A) <- c(3, 2)
A
#===============================================================================
# ========   Añadir y eliminar columnas de matrices en R   =====================
#===============================================================================

# Añadir columna
A1 <- cbind(A, c(6, 1, 7))
A1
# Añadir dos columnas
A2 <- cbind(A, c(6, 1, 7), c(1, 6, 1))
A2
# Eliminar la primera columna
A3 <- A2[, -1]
A3
# Borrar la primera y la tercera columna
A4 <- A2[, -c(1, 3)]
A4

#===============================================================================
#==============   Añadir y eliminar filas a una matriz en R   ==================
#===============================================================================
# Agregar fila
A_1 <- rbind(A, c(6, 1))
A_1
# Agregar fila de cincos
A_2 <- rbind(A, 5)
A_2 
# Eliminar la segunda fila
A_3 <- A_2[-2, ]
A_3

#===============================================================================
#=================     Apilar matrices en R     ================================
#===============================================================================
x <- matrix(c(2, 7, 1, 3, 6, 1), ncol = 2, byrow = TRUE)
y <- matrix(c(3, 7, 6, 3, 5, 9), ncol = 2, byrow = TRUE)

# Apilando las matrices
rbind(x, y)


#longitud final de la lista usamos do.call
lista_matrices <- list(x, y)
lista_matrices

do.call(rbind, lista_matrices)
rbind(lista_matrices[[1]], lista_matrices[[2]]) # Equivalente

#===============================================================================
#=======      Añadir nombres a las filas y a las columnas        ===============
#===============================================================================
# cambiar los nombres de las filas y columnas de una matriz con las funciones
# rownames y colnames .

B <- matrix(c(4, 5, 1, 10, 8, 3),
            nrow = 2, ncol = 3, byrow = TRUE)

# Agregar nombres a las filas
rownames(B) <- c("Fila 1", "Fila 2")
rownames(B) <- paste0("Fila ", 1:nrow(B)) # Equivalente

# Agregar nombres a las columnas
colnames(B) <- c("Columna 1", "Columna 2", "Columna 3")
colnames(B) <- paste0("Columna ", 1:ncol(B)) # Equivalente
B
# renombrar las columnas y filas de la matriz de la misma manera.

# con la función attributes se puede acceder a la dimensión y los 
# nombres de columna y fila de tu matriz.
attributes(B)

# devolver los nombres de columna y fila, se puedee utilizar la función dimnames y acceder
# a los elementos de la lista para tener los nombres de las filas o de las columnas.
dimnames(B)

#===============================================================================
#======= Eliminar nombres de las filas y las columnas de las matrices  ==========
#===============================================================================

#eliminar los nombres de las filas o columnas asignándoles el valor NULL o 
#usando la función unname para borrar todos los nombres.


# Borrar nombres de las columnas
colnames(B) <- NULL

# Borrar nombres de las filas
rownames(B) <- NULL

# Eliminar nombres de 
# filas y columnas a la vez
unname(B)


#===============================================================================
#============= Acceder a los elementos de una matriz en R  =====================
#===============================================================================
# La principal manera para acceder a los datos es usando matriz[filas, columnas]. 
# Sin embargo, existen ciertas diferencias entre las estructuras de datos.
matriz <- matrix(c(1, 5, 8, 1, 3, 2), ncol = 3)
matriz

# Primer elemento de la primera columna
matriz[1]    # 1
matriz[[1]]  # Equivalente
matriz[1, 1] # Equivalente

# Segunda fila, tercera columna
matriz[2, 3] # 2

# Primera fila
matriz[1, ] # 1 8 3

# Segunda columna
matriz[, 2] # 8 1

# Primera y segunda columna, primera fila
matriz[1, 1:2] # 1 8

# Primera y tercera columna, segunda fila
matriz[2, c(1, 3)] # 5 2
matriz[2, c(TRUE, FALSE, TRUE)] # Equivalente

# Todas las columnas excepto la segunda
matriz[, -2]

# Última fila de la matriz
matriz[nrow(matriz), ] # 5 1 2

# Última columna de la matriz
matriz[, ncol(matriz)] # 3 2

#al devolver filas o columnas individuales, la salida será un vector.
#Si quieres evitar esto, establece drop = FALSE.

matriz[1, , drop = FALSE]


#si la matriz tiene nombres se puede acceder a los elementos indexándolos con los nombres.


C <- matrix(c(5, 3, 2, 52, 34, 12), nrow = 2, ncol = 3, byrow = TRUE)

rownames(C) <- c("Fila 1", "Fila 2")
colnames(C) <- c("Columna 1", "Columna 2", "Columna 3")

# Primera fila, columnas 1 y 3
C["Fila 1", c("Columna 1", "Columna 3")]

#===============================================================================
#==========   Eliminar valores NA, NaN e Inf de una matriz   ===================
#===============================================================================

C <- matrix(c(14, NaN, 3, Inf, -5, 4, 1, NA), ncol = 4)
C


#se puede eliminar las filas o las columnas con valores no finitos con las funciones rowSums o colSums e is.finite.

# Borrar todas las filas con valores no finitos
C[!rowSums(!is.finite(C)), ] # 14  3 -5  1

# Borrar todas las columnas con valores no finitos
C[, !colSums(!is.finite(C)), drop = FALSE]

#En caso de que quieras reemplazar los valores
#se puede detectar los valores no finitos usando !is.finite y los valores NA con la función is.na
#y luego asignar los valores que quieras (nosotros vamos a reemplazar con 0)

# Reemplazar los NA con 0
C[is.na(C)] <- 0
C

# Reemplazar los valores no finitos con 0
C[!is.finite(C)] <- 0
C





















