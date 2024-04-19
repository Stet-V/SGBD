USE tranzactii.dbf

INPUT 'Suma: ' TO x
LIST FIELDS nume FOR operatie = 'Cumparare' AND suma > x

INSERT INTO tranzactii.dbf (nume, operatie, valuta, curs, suma);
   VALUES ('Julius Caesar', 'Cumparare', 'Dolar', 4.75, 10000.00)
LIST ALL

SUM suma FOR operatie = 'Cumparare' TO y
?y

CLOSE ALL