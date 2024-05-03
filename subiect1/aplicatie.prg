USE tranzactii.dbf

INPUT 'Suma de bani: ' TO x
BROWSE FIELDS nume FOR operatie = 'Cumparare' AND suma > x

ACCEPT 'Numele persoanei: ' TO a
ACCEPT 'Tipul operatiei: ' TO b
ACCEPT 'Tipul valutei: ' TO c
INPUT 'Cursul zilnic: ' TO d
INPUT 'Suma de bani: ' TO e
INSERT INTO tranzactii.dbf (nume, operatie, valuta, curs, suma) VALUES (a, b, c, d, e)
BROWSE

SUM suma FOR operatie = 'Cumparare' TO y
?'Suma totala: ', y

CLOSE ALL