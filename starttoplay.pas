{ALGORITHME startToPlay;

CONST
	MAX=250;

VAR
	entrees, nombrePlaces : ENTIER;

DEBUT
	
	REPETER
		ECRIRE "Entrez le nombre de personnes entrantes ou sortantes de la salle. Entrez un nombre négatif si les personnes sortent. Entrez 0 pour quitter"
		LIRE entrees;
		
		
		//Si le nombre d'entrées est supérieur au nombre maximum on l'affiche
		SI nombrePlaces + entrees > MAX ALORS
			ECRIRE "Impossible, il n'y a plus de places !"
			
		//Si trop de personnes partent  on l'affiche
		SINON SI nombrePlaces + entrees < 0 ALORS
			ECRIRE "Impossible, il y a plus de personnes qui partent que de personnes dans la salle."
			
		//Sinon on actualise le nombre de places
		SINON
			nombrePlaces <- nombrePlaces + entrees;
		FINSI
		
		//Si le nombre maximum est atteint, on l'affiche
		SI nombrePlaces = MAX ALORS
			ECRIRE "Nombre maximum atteint"
		FINSI
	JUSQU'A entrees = 0;
FIN}

program startToPlay;

uses crt;

CONST
	MAX=250;

VAR
	entrees, nombrePlaces : integer;

BEGIN
	clrscr;
	
	repeat
		writeln('Entrez le nombre de personnes entrantes ou sortantes de la salle. Entrez un nombre négatif si les personnes sortent. Entrez 0 pour quitter');
		readln(entrees);
		
		//Si le nombre d'entrées est supérieur au nombre maximum on l'affiche
		if (nombrePlaces + entrees > MAX) then
			writeln('Impossible, il n''y a plus de places !')
		
		//Si trop de personnes partent  on l'affiche
		else if (nombrePlaces + entrees < 0) then
			writeln('Impossible, il y a plus de personnes qui partent que de personnes dans la salle.')
		
		//Sinon on actualise le nombre de places
		else
			nombrePlaces := nombrePlaces + entrees;
			
		//Si le nombre maximum est atteint, on l'affiche
		if nombrePlaces = MAX then
			writeln('Nombre maximum atteint');
			
		writeln();
	until entrees = 0;
END.
