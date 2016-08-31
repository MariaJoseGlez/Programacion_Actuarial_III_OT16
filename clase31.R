#Factores
x<- factor(c("si","no","si","si","no","si","no"))
x
table(x)
unclass(x)
x<- factor(c("si","no","si","si","no","si","no"),levels =c("si", "no"))
x
unclass(x)

x <-factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)
unclass(x)

#Valores faltantes

x<- c(1,2,NA, 10,3)
is.na(x)
is.nan(x)

x<- c(1,2,NaN, 10,3)
is.na(x)
is.nan(x)

#Data Frame

x <-data.frame(Erick =1:4 , Lori = c(T,T,F,F))
row.names (x) <- c("Primero" , "Segundo", "Tercero", "Cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <-c("Yerely", "Karen")
x

#Los nombres no son exclusivos de los data frames 
x <- 1:3
names(x) #NULL
names(x)<- c("Hugo", "Paco", "Luis")
x

x <- list(a=1:10,b=100:91,c=51:60)
x
names(x) <- c("Sec1", "Sec2" ,"Sec3")
x


m <- matrix(1:4, 2,2)
m
attributes(m)
dimnames(m) <- list(c("Fila1", "Fila2"),c("Columna1", "Columna2"))
m

m <- matrix(NA, 5, 6)
m
attributes(m)
dimnames(m) <- list(c("1","2","3","4","5"), c("a","b","c","d","e", "f"))
m

#Lectura de Datos
getwd()
setwd("~/GitHub/Programacion_Actuarial_III_OT16")
data <- read.csv("Datos de S&P.csv")
data <- read.table("Datos de S&P.csv", T, ",")
data

