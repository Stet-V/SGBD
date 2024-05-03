USE depunatori.dbf

ACCEPT 'Nume depunator: ' TO a
INPUT 'Suma depusa: ' TO b
ACCEPT 'Termen: ' TO c
INSERT INTO depunatori.dbf (nume, suma, termen, dobanda) VALUES (a, b, c, 0.00)
SCAN
    REPLACE dobanda WITH 0.08 * suma
ENDSCAN
BROWSE

INPUT 'Suma: ' TO x
SORT TO depunatori1.dbf ON nume
USE depunatori1.dbf
BROWSE FIELDS nume FOR suma > x

USE depunatori.dbf
SUM dobanda FOR termen='24 luni' TO y
?'Dobanda platita: ', y

CLOSE ALL 