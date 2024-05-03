USE rezervari.dbf

INPUT 'Numarul locului: ' TO a
ACCEPT 'Tipul locului: ' TO b
ACCEPT 'Data inchirierii: ' TO c
INPUT 'Numarul de nopti: ' TO d
ACCEPT 'Numele persoanei: ' TO e
INSERT INTO rezervari.dbf (numar, loc, data, nopti, nume) VALUES (a, b, CTOD(c), d, e)
BROWSE

ACCEPT 'Persoana: ' to x
y = 0
COUNT TO y FOR nume = x AND loc = 'Casuta'
?'Numarul de cate ori a mai fost cazata persoana data:', y

SORT TO rezervari1.dbf ON loc
USE rezervari1.dbf
BROWSE FIELDS numar FOR data + nopti < DATE()

CLOSE ALL