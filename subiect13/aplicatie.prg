USE tari.dbf

ACCEPT 'Denumirea tarii: ' TO a
ACCEPT 'Continentul in care se afla: ' TO b
ACCEPT 'Capitala: ' TO c
INPUT 'Numar locuitori: ' TO d
INSERT INTO tari.dbf (denumire, continent, capitala, locuitori) VALUES (a, b, c, d)
BROWSE

ACCEPT 'Continent: ' to x
y = 0
COUNT TO y FOR continent = x
?'Numarul de tari de pe continent in tabela: ', y

SORT TO tari1.dbf ON locuitori /D
USE tari1.dbf
BROWSE FIELDS denumire, capitala

CLOSE ALL