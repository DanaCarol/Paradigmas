type Materias = [(String,Float)]
type Alumno = (String, Int, Materias)

diana :: Alumno
diana = ("diana",21,[])

henry :: Alumno
henry =("henry",21,[])

nombre :: Alumno -> String
nombre (nombre,,)= nombre 

edad :: Alumno -> Int
edad (,edad,) = edad

materias :: Alumno -> Materias
materias (,,materias) = materias

--sumanotas :: Alumno -> Float
--sumanotas (,,materias) = 

--promedionotas :: Alumno -> Float
--promedionotas alumno = sumanotas alumno / fromIntegral (examenes alumno)

--notaMasAlta :: Alumno -> Float
--notaMasAlta (,,notas)= maximum notas

--notaMasBaja :: Alumno -> Float
--notaMasBaja (,,notas) = minimum notas 

--primeranota :: [Float] -> Float
--primeranota (x:xs) = x

--primeraNotaAlumno :: Alumno -> Float
--primeraNotaAlumno = primeranota.notas
