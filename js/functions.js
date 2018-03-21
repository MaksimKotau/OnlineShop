function valider(){
	var titre=document.getElementById('titre').value;
	var duree=document.getElementById('duree').value;
	var res=document.getElementById('res').value;
	if(titre=="" || duree=="" || res=="")
		return false;
	else 
		return true;
}

function visible(){
	document.getElementById("ajout").style.display='block';
	document.getElementById("filmTable").style.display='none';
	document.getElementById("meillclient").style.display='none';
}

function invisible(){
	document.getElementById(filmsTable).style.display='none';
	document.getElementById(ajout).style.display='block';
}

function fermAjout(){
	
	document.getElementById("ajout").style.display='none';
}

function envoyer(){
	window.location.reload();
	document.getElementById('afficher').submit();
	
	
}

function statist() {
	
	window.location.reload();
	document.getElementById("stats").submit();
	
	
}


function validerNumFilm(elem){
	var regIdf=new RegExp("^[0-9]{1,4}$");
	var idf=document.getElementById(elem).value;
	if (regIdf.test(idf))
		return true;
	else 
		return false;
}

