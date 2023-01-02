# Proyecto final bioinformatica script 

library (dyplr)
library (stringr)

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
  
}
View (lista)
rectsf()  




