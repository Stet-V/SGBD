USE absente.dbf

ACCEPT 'Nume elev: ' TO a
INPUT 'Numar total absente: ' TO b
INPUT 'Numar absente nemotivate: ' TO c
INSERT INTO absente.dbf (nume, absente, nemotivate, purtare) VALUES (a, b, c, 0.00)
SCAN
	REPLACE purtare WITH 10 - FLOOR(nemotivate / 9)
ENDSCAN
BROWSE

SUM absente - nemotivate TO x
?'Numarul de absente motivate: ', x

SORT TO absente1.dbf ON nume
USE absente1.dbf
BROWSE FOR purtare > 7

CLOSE ALL