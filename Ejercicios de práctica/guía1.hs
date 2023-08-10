

esMultiplodeTres numero = mod numero 3 == 0

esMultiploDe numero1 numero2 = mod numero2 numero1 == 0

doble  =  (* 2)

triple numero = numero * 3

cubo numero = numero ^ 3

area altura base = altura * base


esBisiesto anio = esMultiploDe 400 anio || (esMultiploDe 4 anio && not(esMultiploDe 100 anio))

celsiusToFahr temp = (temp * 9 / 5) + 32

fahrToCelsius temp = (temp - 32) * 5/9

probabilidadDeLluvia n 
    |0<n && n<25 ="Poco probable"
    |0<n && n<75 ="Muy probable"
    |n>75 ="Seguro"

cuadruple:: Num a => a->a 
cuadruple = doble.doble






