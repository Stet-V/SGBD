USE bilete.dbf

INSERT INTO bilete.dbf (numar, destinatie, clasa, pret, tren, data);
   VALUES (42, 'Roma', 'I', 250, 38, {^2024/10/12})
LIST ALL

SORT TO bilete1.dbf ON destinatie
USE bilete1.dbf
LIST FIELDS destinatie FOR clasa<>'II'
USE bilete.dbf

INPUT 'Luna: ' to x
SUM pret FOR MONTH(data) = x
?x

CLOSE ALL