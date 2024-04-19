USE angajati.dbf

INSERT INTO angajati.dbf (nume, varsta, tip, salarvechi, salarnou);
	VALUES ('Gabriel Popa', 36, 'productiv', 2700.00, 2900.00)
LIST ALL

SORT TO angajati1.dbf ON varsta /D
USE angajati1.dbf
LIST ALL for varsta <= 50

USE angajati.dbf
SCAN
	replace salarnou WITH 1.05 * salarvechi
ENDSCAN
LIST ALL

CLOSE ALL