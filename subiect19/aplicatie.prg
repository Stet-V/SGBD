USE biblioteca.dbf

ACCEPT 'Titlul cartii: ' TO a
ACCEPT 'Autorul cartii: ' TO b
ACCEPT 'Genul: ' TO c
INPUT 'Numarul de volume: ' TO d
INSERT INTO biblioteca.dbf (titlu, autor, gen, volume) VALUES (a, b, c, d)
BROWSE

ACCEPT 'Gen: ' to x
SORT TO biblioteca1.dbf ON titlu
USE biblioteca1.dbf
BROWSE FOR gen = x

y = 0
COUNT TO y FOR volume > 5
?'Numarul de carti cu mai mult de 5 volume: ', y

CLOSE ALL
