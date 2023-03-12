################################################################################
###################     #LABORATORIO 04     ####################################
################################################################################
#========================      FACTORES     ====================================
#=======                  La función factor                   ==================
#=======  La función factor permite crear factores en R.      ==================
#===============================================================================
factor(x = character(),         # Vector de entrada
       levels,                  # Valores únicos de x (opcional)
       labels = levels,         # Etiquetas para los niveles (opcional)
       exclude = NA,            # Valores a excluir de los niveles
       ordered = is.ordered(x), # Si los niveles de entrada están ordenados o no
       nmax = NA)               # Máximo número de niveles
#?factor 
#help(factor)

#===============================================================================
#Convertir caracter en factor en R
#===============================================================================
dias = c("Viernes", "Martes", "Jueves", "Lunes", "Miércoles", "Lunes",
          "Miércoles", "Lunes", "Lunes", "Miércoles", "Domingo", "Sábado")

# Niveles en orden alfabético
my_factor = factor(dias)
my_factor
#Cabe destacar que se pueden devolver y convertir los niveles de los factores en 
#caracteres con la función levels.

levels(my_factor)
#===============================================================================
#                   Convertir variable numérica en factor                      #
#===============================================================================
#Supongamos ahora que has registrado la ciudad de nacimiento de seis personas 
#con la siguiente codificación:
#1: Dublin.
#2: Londres,
#3: Sofia.
#4: Pontevedra.

# Almacenamos en un vector
ciudad = c(3, 2, 1, 4, 3, 2)

my_factor = factor(ciudad)
my_factor

#===============================================================================
#====      Cambiar las etiquetas de los niveles de un factor en R       ========
#===============================================================================

# Especificando las etiquetas en el orden correspondiente
factor_ciudades = factor(ciudad, labels = c("Dublin", "Londres",
                                             "Sofia", "Pontevedra"))
factor_ciudades


#===============================================================================
#====== Diferencia entre los argumentos ‘levels’ y ‘labels’
#===============================================================================
genero = c("femenino", "femenino", "femenino", "femenino")
factor(genero)
#el argumento labels permite modificar los nombres de los niveles de factores.
factor(genero, labels = c("f"))

# el argumento levels está relacionado con la entrada
factor(genero, levels = c("masculino", "femenino"))


#===============================================================================
#=========             Reordenar factores en R                        ==========
#===============================================================================
#Orden personalizado
# Creando un vector con el orden deseado
orden = c("Londres", "Sofia", "Dublin", "Pontevedra")
# Indica el orden en el argumento 'levels'
factor_ciudades = factor(factor_ciudades, levels = orden)
factor_ciudades

#Ordenar alfabéticamente los niveles del factor utilizando la función sort:
# Orden alfabético
factor(ciudad, labels = sort(levels(factor_ciudades)))

# La función reorder
set.seed(1)
df = data.frame(ciudad = factor_ciudades, salario = sample(20:50, 6))
df

# reordenar el factor en función del salario medio de las personas utilizando
# la función reorder de la siguiente manera:
reorder(df$ciudad, df$salario, mean)

#===============================================================================
#=============          Revertir el orden de los niveles            ============
#===============================================================================
levels(factor_ciudades)
#revertir el orden de los niveles con la función rev:
factor(factor_ciudades, labels = rev(levels(factor_ciudades)))

#La función relevel
factor_ciudades = relevel(factor_ciudades, "Londres")
factor_ciudades
#===============================================================================
#=======      Convertir factor en variable numérica                       ======
#===============================================================================

mis_datos = c(0, 2, 0, 5, 1, 9, 9, 4)
mi_factor = factor(mis_datos)

as.numeric(levels(mi_factor))[mi_factor]


#===============================================================================
#========        Convertir factor de R en string                     ===========
#===============================================================================
mi_factor_2 = factor(c("Junio", "Julio", "Enero", "Junio"))
as.character(mi_factor_2)

# la función levels, la salida devolverá un vector de caracteres con
# las cadenas ordenadas alfabéticamente.
levels(mi_factor_2)


#===============================================================================
#====== Convertir un factor de R en clase date                        ==========
#===============================================================================
factor_fechas =  factor(c("21/03/2023",
                          "22/03/2023",
                          "23/03/2023"))
as.Date(factor_fechas, format = "%d/%m/%Y")

#===============================================================================
#======        Practica - Ejemplos de Aplicacion                      ==========
#===============================================================================

# crear vector de tallas
tallas = c('m', 'g', 'S', 'S','m', 'M')

# intentar graficar
plot(tallas)

# crear factor de un vector
tallas_factor = factor(tallas)

# graficar factor
plot(tallas_factor)

# mirar niveles de factor
levels(tallas_factor)

# creando factor recodificado
#Para cambiar el nombre de los niveles, tenemos que modificar la función factor(). 
tallas_recodificado = factor(tallas,
                              levels = c("g", "m", "M", "S"), #Escribimo lo que tenemos
                              labels = c("G", "M", "M", "S")) #escribimo lo que queremos


# graficando ventas_recodificado
plot(tallas_recodificado)

# ordenando niveles (copiar factor anterior)
tallas_ordenado = factor(tallas,
                          ordered = TRUE,
                          levels = c("S", "m", "M", "g"),
                          labels = c("S", "M", "M", "G"))

# viendo el orden en los niveles
tallas_ordenado
plot(tallas_ordenado)


