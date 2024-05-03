USE persoane.dbf

ACCEPT 'CNP: ' TO a
ACCEPT 'Nume: ' TO b
ACCEPT 'Data nasterii: ' TO c
INPUT 'Cod personal: ' TO d
INSERT INTO persoane.dbf (cnp, nume, data, cod) VALUES (a, b, CTOD(c), d)
BROWSE

x = 0
COUNT TO x FOR (SUBSTR(cnp, 1, 1) = '2' OR SUBSTR(cnp, 1, 1) = '6')
?'Numarul de femei: ', x

INPUT 'An: ' to y
BROWSE FIELDS nume, cod FOR YEAR(data) = y

CLOSE ALL
