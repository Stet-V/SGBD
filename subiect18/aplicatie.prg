USE angajati.dbf

ACCEPT 'Nume: ' TO a
INPUT 'Varsta: ' TO b
ACCEPT 'Tipul muncii prestate: ' TO c
INPUT 'Salar vechi: ' TO d
INSERT INTO angajati.dbf (nume, varsta, tip, salarvechi, salarnou) VALUES (a, b, c, d, 0.00)
BROWSE

SORT TO angajati1.dbf ON varsta /D
USE angajati1.dbf
BROWSE for varsta <= 50

USE angajati.dbf
SCAN
	REPLACE salarnou WITH 1.05 * salarvechi
ENDSCAN
BROWSE

CLOSE ALL