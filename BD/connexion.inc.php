<?php
	define("SERVEUR","localhost");
	define("USAGER","root");
	define("PASSE","");
	define("BD","db_films");
	$connexion = new mysqli(SERVEUR,USAGER,PASSE,BD);
	if ($connexion->connect_errno) {
		echo "Probleme de connexion au serveur de bd";
		exit();
	}
	$connexion->set_charset('utf8');
?>