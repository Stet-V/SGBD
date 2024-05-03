USE bilete.dbf

INPUT 'Numar bilet: ' TO a
ACCEPT 'Destinatie: ' TO b
ACCEPT 'Clasa: ' TO c
INPUT 'Pret: ' TO d
INPUT 'Numar tren: ' TO e
ACCEPT 'Data emiterii: ' TO f
INSERT INTO bilete.dbf (numar, destinatie, clasa, pret, tren, data) VALUES (a, b, c, d, e, CTOD(f))
BROWSE

SORT TO bilete1.dbf ON destinatie
USE bilete1.dbf
BROWSE FIELDS destinatie FOR clasa <> 'II'

USE bilete.dbf
INPUT 'Luna: ' to x
SUM pret FOR MONTH(data) = x TO y
?'Incasari: ', y

CLOSE ALL
