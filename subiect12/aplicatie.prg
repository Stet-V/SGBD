USE personalitati.dbf

ACCEPT 'Nume: ' TO a
ACCEPT 'Domeniul activitatii: ' TO b
ACCEPT 'Tara de origine: ' TO c
INPUT 'Varsta: ' TO d
INSERT INTO personalitati.dbf (nume, domeniu, tara, varsta) VALUES (a, b, c, d)
BROWSE

ACCEPT 'Tara: ' to x
BROWSE FOR tara = x

CALCULATE AVG(varsta) TO y FOR domeniu = 'afaceri'
?'Varsta medie pe domeniul "afaceri": ', y

CLOSE ALL