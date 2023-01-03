# Proyecto final bioinformatica script 

library (dplyr)
library (stringr)
library (pander)

# Objetivo. En base a datos que van a ser provistos por el usuario, como la cantidad y 
# tipo de ingredientes, tiempo disponible para cocinar y tipo de platillo que se desea, 
# proveer al usuario de una lista de recetas que cumplan con estos requisitos. 
# El usuario obtendra la lista de recetas en conjunto con el link de cada una para poder 
# elegir entre las distintas opciones provistas. 

# El primer paso es colocar la base de datos con la que trabajamos aqui. 
View (recetas)

# Delimitar una funcion que nos permita obtener datos del usuario 

rectsf <- function () {
  nombre <- readline (prompt = "Hola, ¿cual es tu nombre?: ")
  print (paste("Hola", nombre, "a continuacion te hare algunas preguntas sobre los ingredientes con los que deseas cocinar, es importante que coloques la cantidad de ingredientes en numero (ej. 4), coloca el nombre en minusculas, sin acentos o espacios y si tu ingrediente posee una letra 'ñ' puedes sustituirla por 'gn' (ej. champiñones -> champignones). Gracias!"))
  
  cts <- readline (prompt = "¿cuantos ingredientes posees? (max = 6): ")

if (cts == "1") {
  i1 <- readline(prompt = "¿cual es tu ingrediente?: ")
  lista <- subset(recetas, grepl(i1, ingred))
  
} else if (cts == "2"){
  i1 <- readline (prompt = "¿cual es tu primer ingrediente?: ")
  i2 <- readline (prompt = "¿cual es tu segundo ingrediente?: ")
  
  lista1 <- subset(recetas, grepl(i1, ingred))
  lista <- subset(lista1, grepl(i2, ingred))
  
} else if (cts == "3"){
  i1 <- readline (prompt = "¿cual es tu primer ingrediente?: ")
  i2 <- readline (prompt = "¿cual es tu segundo ingrediente?: ")
  i3 <- readline (prompt = "¿cual es tu tercer ingrediente?: ")
  
  lista1 <- subset(recetas, grepl(i1, ingred))
  lista2 <- subset(lista1, grepl(i2, ingred))
  lista <-  subset(lista2, grepl(i3, ingred))
  
} else if (cts == "4") {
  i1 <- readline (prompt = "¿cual es tu primer ingrediente?: ")
  i2 <- readline (prompt = "¿cual es tu segundo ingrediente?: ")
  i3 <- readline (prompt = "¿cual es tu tercer ingrediente?: ")
  i4 <- readline (prompt = "¿cual es tu cuarto ingrediente?: ")
  
  lista1 <- subset(recetas, grepl(i1, ingred))
  lista2 <- subset(lista1, grepl(i2, ingred))
  lista3 <-  subset(lista2, grepl(i3, ingred))
  lista <-  subset(lista3, grepl(i4, ingred))
  
} else if (cts == "5"){
  i1 <- readline (prompt = "¿cual es tu primer ingrediente?: ")
  i2 <- readline (prompt = "¿cual es tu segundo ingrediente?: ")
  i3 <- readline (prompt = "¿cual es tu tercer ingrediente?: ")
  i4 <- readline (prompt = "¿cual es tu cuarto ingrediente?: ")
  i5 <- readline (prompt = "¿cual es tu quinto ingrediente?: ")
  
  lista1 <- subset(recetas, grepl(i1, ingred))
  lista2 <- subset(lista1, grepl(i2, ingred))
  lista3 <-  subset(lista2, grepl(i3, ingred))
  lista4 <-  subset(lista3, grepl(i4, ingred))
  lista <- subset (lista4, grepl(i5, ingred))
  
} else if (cts == "6") {
  i1 <- readline (prompt = "¿cual es tu primer ingrediente?: ")
  i2 <- readline (prompt = "¿cual es tu segundo ingrediente?: ")
  i3 <- readline (prompt = "¿cual es tu tercer ingrediente?: ")
  i4 <- readline (prompt = "¿cual es tu cuarto ingrediente?: ")
  i5 <- readline (prompt = "¿cual es tu quinto ingrediente?: ")
  i6 <- readline (prompt = "¿cual es tu sexto ingrediente?: ")
  
  lista1 <- subset(recetas, grepl(i1, ingred))
  lista2 <- subset(lista1, grepl(i2, ingred))
  lista3 <-  subset(lista2, grepl(i3, ingred))
  lista4 <-  subset(lista3, grepl(i4, ingred))
  lista5 <- subset (lista4, grepl(i5, ingred))
  lista <- subset (lista5, grepl(i6, ingred))
}
  
# Hasta aqui terminamos la primera parte del filtraje, primero colocamos una introduccion para que el 
# usuario entienda las condiciones en que necesitamos que los ingredientes sean escritos para una correcta
# busqueda 
  
# Una vez establecido eso preguntamos la cantidad de ingredientes, debido a la longitud de la base de datos
# y que las recetas que contiene son de escasos ingredientes, decidimos colocar un numero finito de ingredientes
# que son 6, esto ya hace muy especifica la busqueda. 

# Ahora, en funcion del digito ingresado por el usuario, R va a preguntarle que ingredientes estara usando 
# para cocinar, si tiene 3 ingredientes realizara 3 preguntas y asi sucesivamente, el resultado de estas
# preguntas es la extraccion de una cantidad x de recetas de la base de datos 
  
  
tpc <- readline (prompt = "¿con cuanto tiempo dispone para cocinar? Elija alguna de las siguientes opciones: menos de una hora, mas de una hora, mas de dos horas, mas de tres horas")
cqc <- readline(prompt = "¿Para cuantas personas es la comida? Elija alguna de las siguientes opciones: menos de dos y/o mas de dos" )
  
  if (tpc == "menos de una hora" & cqc=="menos de dos") {
    lista_tiempo_comens <- subset(lista, time == c(10, 15, 30, 35, 40, 45) & comens == c (1, 2))
    
  } else if (tpc == "menos de una hora" & cqc=="mas de dos") {
    lista_tiempo_comens <- subset(lista, time == c(10, 15, 30, 35, 40, 45) & comens == c (3, 4 ,5 ,6 ,7 ,8 ,10 ,11 ,12, 15, 16, 20))
    
  } else if (tpc == "mas de una hora" & cqc=="menos de dos") {
    lista_tiempo_comens <- subset(lista, time == c(60, 80, 90) & comens == c (1, 2))
    
  } else if (tpc == "mas de una hora" & cqc=="mas de dos") {
    lista_tiempo_comens <- subset(lista, time == c(60, 80, 90) & comens == c (3, 4 ,5 ,6 ,7 ,8 ,10 ,11 ,12, 15, 16, 20))
    
  } else if (tpc == "mas de dos horas" & cqc=="menos de dos") {
    lista_tiempo_comens <- subset(lista, time == 150 & comens == c (1,2))
    
  } else if (tpc == "mas de dos horas" & cqc=="mas de dos") {
    lista_tiempo_comens <- subset(lista, time == 150 & comens == c (3, 4 ,5 ,6 ,7 ,8 ,10 ,11 ,12, 15, 16, 20))
    
  } else if (tpc == "mas de tres horas" & cqc=="menos de dos") {
    lista_tiempo_comens <- subset(lista, time == c(180, 240, 360, 480, 1140) & comens == c (1, 2))
    
  } else if (tpc == "mas de tres horas" & cqc=="mas de dos") {
    lista_tiempo_comens <- subset(lista, time == c(180, 240, 360, 480, 1140) & comens == c (3, 4 ,5 ,6 ,7 ,8 ,10 ,11 ,12, 15, 16, 20))
    
  }        

# Aqui se agregan los siguientes dos filtros, es decir, a partir del primer filtro que se realizó en la parte de arriba se genera una base de datos
# "nueva" es decir, la base de datos de "recetas" original se filtra, a partir de este filtro se genera una nueva base denominada "lista" a la cual 
# se le aplica un nuevo filtro constituido de dos caracteristicas diferentes las cuales son el tiempo del que se dispone para cocinar y la cantidad
# de comensales 
  
# Para el filtro del tiempo, se generaron cuatro grupos debido a que se cuenta con un horario muy diverso y colocar el numero especifico 
# de tiempo en minutos resulta en una cantidad inmensa de codigo, por esta razon, concatenamos el tiempo para generar vectores que en funcion 
# del tiempo se agruparan en "menos de una hora", en la cual se incluyen recetas que tienen un lapso de 10 a 45 minutos; "mas de una hora", que cuenta con recetas
# de 60 minutos, 80 y 90 minutos; "mas de dos horas" que cuenta con recetas de 150 minutos; "mas de tres horas" en donde se incluyen recetas que van desde los 180
# minutos hasta 1140 minutos, lo cual equivale a 19 horas. 
  
# Para el filtro del tiempo utilizamos el signo de ampersand que es altamente estricto a la hora de generar un filtro, pues si no se cumple con
# la condicion especifica, no arroja un resultado. En esta parte del filtro tambien se generaron grupos, los cuales estaban constituidos por el 
# numero de comensales, el primero gurpo "menos de dos" se incluyen unicamente 1 o 2 comensales; mientras que en el segundo grupo "mas de dos" 
# hace referencia a que la receta incluye de 3 comensales en adelante

lista_ca <- lista_tiempo_comens [, c(2, 8)]

print (paste("Hola", nombre, ", en base a los datos ingresados te muestro las siguientes recetas que hacen match con lo que necesitas, en esta tabla se encuentra el nombre de la receta junto con el resto de ingredientes que deben usarse. Elige una receta que desees te sea mostrada"))

View (lista_ca)

elx <- readline (prompt = "¿cual es la receta de tu eleccion? Escribela textualmente (ej. receta_de_quinoa_con_setas): ")

recetaf <- subset (lista_tiempo_comens, nombre == elx)
link <- recetaf [ 1, 7]
link
  
# En esta siguiente parte creamos una matriz donde los unicos elementos mostrados seran el nombre de la receta y los 
# ingredientes. Arrojamos un mensaje explicandole el siguiente paso al usuario y colocamos un objeto donde el usuario
# introducira el nombre textual de la receta que desea. 
# del data.frame que ya fue pasado por los tres filtros, extraemos el renglon que haga match con el nombre ingresado 
# de esa forma solo obtenemos una de las recetas (la seleccionada por el usuario), de esta unica receta vamos 
# a extraer unicamente el link, que se encuentra en la columna 7 y lo asignamos a un objeto donde colocamos as.vector
# para leer el objeto sin el nombre del renglon o columna 
# El siguiente paso es descargar el contenido de este link en un documento en pdf 

}

rectsf()   
  




