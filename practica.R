a <- 0
b <- 0
for (i in 1:100){
  z <- 5
  caminata <- vector("numeric")

  while (z>=3 && z<=10){
    caminata <- c(caminata,z)
    moneda <- rbinom(1,1,0.5)
    if (moneda ==1){
      z <- z+ 1
    } else {
      z <- z - 1
    }
  }
  if (z==2){
    a <- a+1
  } else {
    b <- b+1
  }
}
#Los que terminan por abajo (z<3)
print(a)
#Los que terminan por arriba (z>10)
print(b)