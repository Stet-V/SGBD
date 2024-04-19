USE sofer.dbf

INSERT INTO sofer.dbf (nume, localitate, data, amenzi, valoare);
	VALUES ('Iulia Stoica', 'Bacau', {^1986/05/08}, 4, 200.00)
LIST ALL

LIST ALL FOR data > DATE() - 365

ACCEPT 'Localitate: ' to x
SUM amenzi TO y FOR localitate = x
?y

CLOSE ALL