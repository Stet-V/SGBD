USE concurs.dbf

ACCEPT 'Nume participant: ' TO a
INPUT 'Punctaj proba1: ' TO b
INPUT 'Punctaj proba2: ' TO c
INPUT 'Punctaj proba3: ' TO d
INSERT INTO concurs.dbf (nume, proba1, proba2, proba3, total) VALUES (a, b, c, d, 0)
BROWSE

SCAN
	REPLACE total WITH proba1 + proba2 + proba3
ENDSCAN
SORT TO concurs1.dbf ON total /D
USE concurs1.dbf
BROWSE

x = 0
COUNT TO x FOR proba1 > 20
?'Numarul de participanti care au obtinut mai mult de 20 de puncte la proba 1: ', x

CLOSE ALL
