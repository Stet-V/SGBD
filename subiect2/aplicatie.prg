USE someri.dbf

ACCEPT 'Profesie: ' TO x
LIST FIELDS ALL FOR profesie = x AND sex = 'Feminin'

INSERT INTO someri.dbf (nume, sex, varsta, profesie);
   VALUES ('Julius Caesar', 'Masculin', 55, 'General')
LIST ALL

CALCULATE MAX(varsta) TO y
LIST FIELDS ALL FOR varsta = y

CLOSE ALL