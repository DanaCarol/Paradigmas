--Comentario primera práctica de haskell
type Edad = Int
type Sueños = Int
type Nombre = String
type Felicidonios = Int
type Habilidades = [String]

type Persona = (Nombre,Edad,Sueños,Felicidonios,Habilidades)

diana :: Persona
diana = ("Diana",21,10,150,["Tocar el piano","Cocinar","Bailar"])

henry :: Persona
henry = ("Henry",20,3,80,["Cocinar","Programar","Ingles"])

edad :: Persona -> Edad
edad (_,edad,_,_,_) = edad

nombre :: Persona -> Nombre
nombre (nombre,_,_,_,_)= nombre 

sueños :: Persona -> Sueños
sueños (_,_,sueños,_,_) = sueños

felicidonios :: Persona -> Felicidonios
felicidonios (_,_,_,felicidonios,_) = felicidonios


--Punto 1

-- coeficienteDeSatisfaccion :: Persona -> Int
-- coeficienteDeSatisfaccion persona
  --  | felicidonios persona >100 = felicidonios persona * edad persona
   -- | felicidonios persona >50 && felicidonios persona <=100 = sueños persona * felicidonios persona
   -- | otherwise = felicidonios persona 

-- Punto 2
nombreLargo :: Persona -> Bool
nombreLargo = (>10).length.nombre

personaSuertuda :: Persona -> Bool
personaSuertuda = even.(*3).coeficienteDeSatisfaccion

nombreLindo :: Persona -> Bool
nombreLindo = (=='a').last.nombre
