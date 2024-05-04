USE arondati.dbf

INPUT 'CNP: ' TO a
ACCEPT 'Nume: ' TO b
ACCEPT 'Adresa: ' TO c
ACCEPT 'Ultimul diagnostic: ' TO d
ACCEPT 'Data ultimului consult: ' TO e
INSERT INTO arondati.dbf (cnp, nume, adresa, diagnostic, data) VALUES (a, b, c, d, CTOD(e))
BROWSE

BROWSE FIELDS nume, diagnostic FOR MONTH(consult) = MONTH(DATE())

ACCEPT 'Diagnostic: ' to x
y = 0
COUNT TO y FOR diagnostic = x
?'Numar persoane: ', y

CLOSE ALL