USE depunatori.dbf

INSERT INTO depunatori.dbf (nume, suma, termen, dobanda);
   VALUES ('Julius Caesar', 10000.00, '24 luni', 0.00)
SCAN
    REPLACE dobanda WITH 0.08 * suma
ENDSCAN
LIST ALL

INPUT 'Suma: ' TO x
SORT TO depunatori1.dbf ON nume
USE depunatori1.dbf
LIST FIELDS nume FOR suma > x
USE depunatori.dbf

SUM dobanda FOR termen='24 luni' TO y
?y

CLOSE ALL 