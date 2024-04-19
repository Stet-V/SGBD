USE concurs.dbf

INSERT INTO concurs.dbf (nume, proba1, proba2, proba3, total);
	VALUES ('Radu Iancu', 75, 75, 75, 0)
LIST ALL

SCAN
	REPLACE total WITH proba1 + proba2 + proba3
ENDSCAN

SORT TO concurs1.dbf ON total /D
USE concurs1.dbf
LIST ALL

x = 0
COUNT TO x FOR proba1 > 20
?x

CLOSE ALL
