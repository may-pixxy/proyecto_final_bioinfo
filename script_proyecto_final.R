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

# El primer paso es delimitar una funcion que nos permita obtener datos del usuario 
rectsf <- function () {
  nombre <- readline (prompt = "Hola, ¿cual es tu nombre?: ")
  
  print (paste("Hola", nombre, "a continuacion necesitamos que nos indiques 6 ingredientes que poseeas en tu cocina con los que desees trabajar, si tienes 5 en lugar de 6 ingredientes puedes indicarnoslo poniendo 'si' en el nombre del ingrediente. Es importante que no introduzcas acentos o espacios al final de los nombres. Si alguno de tus ingredientes posee una letra 'ñ' puedes escribirla como gn. Ejemplo = champignones, gracias. "))
  
  i1 <- readline (prompt = "¿cual es tu primer ingrediente?: ")
  i2 <- readline (prompt = "¿cual es tu segundo ingrediente?: ")
  i3 <- readline (prompt = "¿cual es tu tercer ingrediente?: ")
  i4 <- readline (prompt = "¿cual es tu cuarto ingrediente?: ")
  i5 <- readline (prompt = "¿cual es tu quinto ingrediente?: ")
  i6 <- readline (prompt = "¿cual es tu sexto ingrediente?: ")
  
  lista <- subset(recetas, grepl(i1, ingred))
  
  
  if (i2 == "si") {
    especif <- readline (prompt = "¿desea hacer una busqueda mas especifica?: ")
  } else if (i2 != "si") {
    lista_2 <- subset(lista, grepl(i2, ingred))
  }
  
  if (i3 == "si") {
    especif <- readline (prompt = "¿desea hacer una busqueda mas especifica?: ")
  } else if (i3 != "si") {
    lista_3 <- subset(lista_2, grepl(i3, ingred))
  } 
  
  
  if (i4 == "si") {
    especif <- readline (prompt = "¿desea hacer una busqueda mas especifica?: ")
  } else if (i4 != "si") {
    lista_4 <- subset(lista_3, grepl(i4, ingred))
  }
  
  
  if (i5 == "si") {
    especif <- readline (prompt = "¿desea hacer una busqueda mas especifica?: ")
  } else if (i5 != "si") {
    lista_5 <- subset(lista_4, grepl(i5, ingred))
  } 
  
  if (i6 == "si") {
    especif <- readline (prompt = "¿desea hacer una busqueda mas especifica?: ")
  } else if (i6 != "si") {
    lista_6 <- subset(lista_5, grepl(i6, ingred))
  }
  
  View (lista_6) 
}


