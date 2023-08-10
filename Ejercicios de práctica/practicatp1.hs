type Edad = Int
type Sueños = Int
type Nombre = String
type Felicidonios = Int
type Habilidades = [String]

type Persona = (Nombre,Edad,Sueños,Felicidonios,Habilidades)

diana :: Persona
diana = ("Diana", 25, 3, 101,["Tocar el piano","Bailar"])

david :: Persona
david = ("David", 26, 2, 100,["Cantar","Tocar la guitarra","Cocinar"])

alejandro :: Persona
alejandro = ("Alejandro", 19, 1, 50,[])

maximiliano :: Persona
maximiliano = ("Maximiliano", 45, 3, 80, ["correr"])

evangelina :: Persona
evangelina = ("Evangelina", 24, 2, 40, [])

nombre :: Persona -> String
nombre (nombre,_,_,_,_)= nombre

sueños :: Persona -> Int
sueños (_,_,sueños,_,_)= sueños

felicidonios :: Persona -> Int
felicidonios (_,_,_,felicidonios,_)= felicidonios

edad :: Persona -> Int
edad (_,edad,_,_,_)= edad 

habilidades :: Persona -> [String]
habilidades (_,_,_,_,habilidades) = habilidades



-- Punto 1
coeficienteDeSatisfaccion :: Persona ->Int
coeficienteDeSatisfaccion persona
    | felicidonios persona >100 = felicidonios persona* edad persona
    | felicidonios persona >50 && felicidonios persona <=100 = sueños persona* felicidonios persona
    | otherwise = div (felicidonios persona) 2

gradoDeAmbicion :: Persona -> Int
gradoDeAmbicion persona 
    | felicidonios persona >100= felicidonios persona* sueños persona
    | felicidonios persona >50 && felicidonios persona<=100 = edad persona* sueños persona
    | otherwise =  2 * sueños persona  

-- Punto 2
tieneNombreLargo :: Persona -> Bool
tieneNombreLargo = (>10).length.nombre

esPersonaSuertuda :: Persona -> Bool
esPersonaSuertuda = even.(*3).coeficienteDeSatisfaccion

esNombreLindo :: Persona -> Bool
esNombreLindo = (=='a').last.nombre

-- Punto 3

sumarFelicidonios :: Persona -> Int -> Persona
sumarFelicidonios (a,b,c,felicidonios,d) felicidoniosasumar = (a,b,c,felicidonios+felicidoniosasumar,d)

aplicarFelicidonios :: String -> Persona -> Persona
aplicarFelicidonios carrera (a,b,c,felicidonios,f) = (a,b,c,felicidonios+ 1000* length carrera,f)

agregarHabilidad :: String -> Persona -> Persona
agregarHabilidad habilidad (a,b,c,d,habilidades) = (a,b,c,d,habilidades ++ [habilidad])

recibirse :: String -> Persona -> Persona
recibirse carrera = (agregarHabilidad carrera).(aplicarFelicidonios carrera)

--recibirseDeUnaCarrera::Persona -> String -> Persona
--recibirseDeUnaCarrera (a,b,c,felicidonios,habilidades) carrera = (a,b,c,felicidonios + 1000* length carrera, habilidades ++ [carrera]) 