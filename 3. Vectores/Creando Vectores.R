# CREACIÓN DE VECTORES
# crear vector caracter con nombre de las películas

name <- c("Toy Story 1", "Toy Story 2: los juguetes vuelven a la carga", "Toy Story 3", "Toy Story 4")

#crear vector numérico con puntuacion de las películas

puntuacion <- c(8.3, 7.9, 8.3, 7.7)

#crear vector lógico sobre si la pelicula es posterior a 2000

posterior_2000 <- c(FALSE, FALSE, TRUE, TRUE)

#agregar numeros 1, -5, 8, 10 al vector x

x <- c(1, -5, 8, 10)

print(x)

class(x)

print(x[1:3])

# seleccionar la 2da pelicula

name[2]

# seleccionar la segunda y la ultima

name[c(2,4)]

# seleccionar todos excepto la segunda

name[-2]

# Ejemplo de seleccion de vectores

x <- c(2, -5, "apple", "banana", TRUE)
x[c(1,4)]

#Creamos una condicion logica 

puntuacion<7.5

#mostrar la condicion para ver TRUE O FALSE

PuntuacionBaja

#Mostrar nombre de las peliculas con puntuacion baja

name[puntuacion]

#sumar 2 a la puntuacion
puntuacion +2

#********************
class(name)
print(name[1])
print(name[-2])
print(name)
print(name[1:3])
print(name[c(1,3)])

#############################################
puntuacionkat = c(9, 9, 9, 9)

#resta
R=puntuacionkat- puntuacion
print(R)

S= puntuacionkat + puntuacion
print(S)

##############################################
#MEAN - MEDIA

x <- c(2, -2, 30, 4, 8, 12)
print(mean(x))

y <- c(12, 80, -10, -76)
print(mean(y))

#MEDIAN - MEDIANA

x <- c(2, -2, 30, 4, 8, 12)
print(median(x))

y <- c(12, 80, -10, -76)
print(median(y))

#MODE - MODA

get_mode <- function(f) {
  uf <- unique(f)
  tab <- tabulate(match(f, uf))
  uf[tab == max(tab)]
}

x <- c(2, -5, 45, 13, -5, 13, 45)
print(get_mode(x))

y <- c("cat", "dog", "cat", "pig")
print(get_mode(y))


#MAXIMUM AND MINIMUM

x <- c(2, -5, 45, 13, -5, 13, 45)
print(max(x))
print(min(x))

#RANGE : VALOR MAX Y MIN

print(range(x))