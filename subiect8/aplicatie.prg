USE agenda.dbf

x = 0
COUNT TO x FOR DAY(data) = DAY(DATE()) AND MONTH(data) = MONTH(DATE())
?'Numarul persoanelor care isi sarbatoresc data nasterii azi: ', x

ACCEPT 'Nume: ' TO a
ACCEPT 'Data nasterii: ' TO b
ACCEPT 'Localitate de domiciliu: ' TO c
INPUT 'Telefon mobil: ' TO d
INSERT INTO agenda.dbf (nume, data, localitate, telefon) VALUES (a, CTOD(b), c, d)
BROWSE

ACCEPT 'Localitate: ' to y
BROWSE FIELDS telefon FOR localitate = y AND SUBSTR(nume, 1, 1) = 'L'

CLOSE ALL