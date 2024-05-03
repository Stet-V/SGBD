USE sofer.dbf

ACCEPT 'Nume: ' TO a
ACCEPT 'Localitate de domiciliu: ' TO b
ACCEPT 'Data eliberarii permisului: ' TO c
INPUT 'Numar total de amenzi primite: ' TO d
INPUT 'Valoarea ultimei amenzi platite: ' TO e
INSERT INTO sofer.dbf (nume, localitate, data, amenzi, valoare) VALUES (a, b, CTOD(c), d, e)
BROWSE

BROWSE FOR data > DATE() - 365

ACCEPT 'Localitate: ' to x
SUM amenzi TO y FOR localitate = x
?'Numarul total de amenzi date soferilor pentru localitatea data: ', y

CLOSE ALL