USE absente.dbf

INSERT INTO absente.dbf (nume, absente, nemotivate, purtare);
	VALUES ('George Dima', 13, 3, 0.00)
SCAN
	REPLACE purtare WITH 10 - FLOOR(nemotivate / 9)
ENDSCAN
LIST ALL

SUM absente - nemotivate TO x
?x

SORT TO absente1.dbf ON nume
USE absente1.dbf
LIST ALL FOR purtare > 7

CLOSE ALL