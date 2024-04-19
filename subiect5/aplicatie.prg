USE arondati.dbf

INSERT INTO arondati.dbf (cnp, nume, adresa, diagnostic, consult);
   VALUES (3456789012345, 'John Smith', 'Str. Secreta', 'Plictiseala', {^2024/04/05})
LIST ALL

LIST FIELDS nume, diagnostic FOR MONTH(consult) = MONTH(DATE())

ACCEPT 'Diagnostic: ' to x
y = 0
COUNT TO y FOR diagnostic = x
?y

CLOSE ALL