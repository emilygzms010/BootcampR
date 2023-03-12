################################################################################
###################     #LABORATORIO 01     ####################################
################################################################################
#================      Basic Data Types     ====================================
#========================== Character ==========================================
print("Hola Mundo") 
print("7.5") 
print("TRUE")

#========================== Numeric ============================================
print(5) 
print(7.5) 
print(-5)

#=========================== Logical ===========================================
print(TRUE) 
print(FALSE)

#========================== Ejemplo  ==========================================
print(True) 
print(true) 
print("TRUE")

##============================================================================
# OJO: True, true y "TRUE" no es lo mismo que TRUE.                           # 
# TRUE es un lógico en R, pero el resto no lo son. Tanto True como true se    # 
# considerarán variables (u objetos), mientras que "TRUE" es un tipo de       # 
# carácter. Notará que imprimir True y true da como resultado un error.       #
#=============================================================================
#======== The class() Function                                 

class(5) 
class("5") 
class(TRUE)
class("Hola Mundo")


#*******************************************************************************
################################  VARIABLES ####################################
#================    Nombre de las variables   =================================
#=================   Legal variable names:  ====================================
myvar <- "John" 
my_var <- "John" 
myVar <- "John" 
MYVAR <- "John" 
myvar2 <- "John" 
.myvar <- "John" 
#=================  Illegal variable names: ====================================
2myvar <- "John" 
my-var <- "John" 
my var <- "John" 
_my_var <- "John" 
my_v@ar <- "John" 
TRUE <- "John"

#=================   Ejemplo de aplicacao  ====================================
x <- 2 
print(x * 5) 
print(x * 20) 
print(x * 50)
#===========================================================================
# OJO debemos de tener en cuenta que algunas palabras clave están reservadas#
# dentro del lenguaje R, lo que significa que no puede asignarles valores,  #
# ejm:si intentamos asignar 5 a TRUE, obtendrá un error porque VERDADERO  #
# es una palabra clave reservada                                            #
#===========================================================================
TRUE <- 5

## comentarios 

x <- "Hoy es " # asigna carácter a la variable x
print(x) 
#print("Lunes") 
#print("Martes") 
#print("Miercoles") 
#print("Jueves") 
print("Viernes")

#==================  Operaciones aritméticas   =================================
#==================== Adición ====================================
print(1 + 2)
print(TRUE + TRUE + FALSE)
print(1+1+0)
print(3 + TRUE + FALSE + TRUE + 5)

#================== sustracción===================================
print(5 - 2) 
print(-6 - 3) 
print(FALSE - TRUE) 
print(TRUE - -3 - 7)

#================= Multiplicación ================================
print(5 * 2) 
print(-6 * 3) 
print(FALSE * TRUE) 
print(TRUE * -3 * 7)

#================= Exponente =====================================
print(2 ^ 2) 
print(2**2)
print(-2 ** 3) 
print(FALSE ^ TRUE) 
print(TRUE ** -3 ^ 9)

#================== Módulo =======================================
print(5 %% 2) 
print(-6 %% 3) 
print(-1 %% -3) 
print(24 %% 5 %% 5)
print(24%%5) #24%%5=24/5=4
print(4%%5)

#================== División entera ==============================
print(5 %/% 2) 
print(-6 %/% 4) 
print(-1 %/% -3) 
print(24 %/% 5 %/% 3)

#================== PENDAS  =====================================
print(2 + 3 * 5 - 7^2 %% 4 + (5 / 2))

#===================  Operadores logicos =======================================
#==================== Menor que ====================================
print(3 < 8)

#=================== Menor o igual que =============================
print(5 <= 7) 
print(5 <= 5) 
print(7 <= 5) 
print("x" <= "y") 
print("z" <= "a")

#==================== Mayor que ====================================
print(5 > 3) 
print(5 > 5) 
print(7 > 5) 
print("x" > "y") 
print(TRUE > FALSE)

#=================== Mayor o igual que =============================
print(5 >= 7) 
print(5 >= 5) 
print(7 >= 5) 
print("x" >= "y") 
print("z" >= "a") 
print(FALSE >= FALSE)

#==================== Igual que ====================================
print(5 == 7) 
print(5 == 5) 
print(0 == FALSE) 
print("x" == "y") 
print("A" == "a") 
print(TRUE == TRUE)

#================== Diferente  =====================================
print(5 != 7) 
print(5 != 5) 
print(0 != FALSE) 
print("x" != "y") 
print("A" != "a") 
print(TRUE != TRUE)

#================== Negación   =====================================
print(5 < 7) 
print(!(5 < 7)) 
print(FALSE) 
print(!(FALSE)) 
print(TRUE)
print(!(TRUE))
#================== Disyunción (o) =================================
print( (5 > 7) | (5 < 7) ) 
print( (TRUE == FALSE) | (1 <= 0))

#================== Conjunción (y) =================================
print( (5 > 7) & (5 < 7) ) 
print( (TRUE == FALSE) & (1 <= 0) ) 
print( (4 < 5) & (9 >= 9) & (1 == TRUE))

#================== Crear variables en R =======================================

# El area de un circulo pi*r2
Radio=5
Area=pi*Radio^2
print(Area)
#==================================
C=2*pi*Radio
print(C)


p=8
q=4

print(p+q)
g=56

print(g%%p)
#*******************************************************************************
D=2*Radio
D