USE personalitati.dbf

INSERT INTO personalitati.dbf (nume, domeniu, tara, varsta);
	VALUES ('Cristina Ionescu', 'Cultura', 'Romania', 47)
LIST ALL

ACCEPT 'Tara: ' to x
LIST ALL for tara = x

SUM varsta TO y FOR domeniu = 'Afaceri'
COUNT TO z FOR domeniu = 'Afaceri'
?y/z

CLOSE ALL