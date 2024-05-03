USE someri.dbf

ACCEPT 'Profesie: ' TO x
BROWSE FOR profesie = x AND sex = 'Feminin'

ACCEPT 'Nume: ' TO a
ACCEPT 'Sex: ' TO b
INPUT 'Varsta: ' TO c
ACCEPT 'Profesie: ' TO d
INSERT INTO someri.dbf (nume, sex, varsta, profesie) VALUES (a, b, c, d)
BROWSE

CALCULATE MAX(varsta) TO y
BROWSE FOR varsta = y

CLOSE ALL