USE agenda.dbf

x = 0
COUNT TO x FOR DAY(data) = DAY(DATE()) AND MONTH(data) = MONTH(DATE())
?x

INSERT INTO agenda.dbf (nume, data, localitate, telefon);
	VALUES ('Alexandra Pop', {^1989/06/12}, 'Bacau', 0722123457)
LIST ALL

ACCEPT 'Localitate: ' to y
LIST FIELDS telefon FOR localitate = y AND SUBSTR(nume, 1, 1) = 'L'

CLOSE ALL