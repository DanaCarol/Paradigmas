type Libro = (String, String, Int)
type Biblioteca = [Libro]

bibliotecaPdeP :: Biblioteca
bibliotecaPdeP = [
    ("El visitante", "Stephen King", 592),
    ("Shingeki no Kyojin 1", "Hajime Isayama", 40)
    ("Shingeki no Kyojin 3", "Hajime Isayama", 40)
    ("Shingeki no Kyojin 127", "Hajime Isayama", 40)
    ("Fundacion", "Isaac Asimov", 230)
    ("Sandman 5", "Neil Gaiman", 35)
    ("Sandman 10", "Neil Gaiman", 35)
    ("Sandman 12", "Neil Gaiman", 35)
    ("Eragon", "Christopher Paolini", 544)
    ("Eldest", "Christopher Paolini", 704)
    ("Brisignr", "Christopher Paolini", 700)
    ("Legado ", "Christopher Paolini", 811)
]

paginas :: Libro -> Int
paginas (_,_,paginas) = paginas





