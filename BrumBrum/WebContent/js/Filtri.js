
function ricercaConFiltri() {

	var Utilitaria = $('.active input[value="2"]').attr('name');
	var Sportiva = $('.active input[value="4"]').attr('name');
	var Suv = $('.active input[value="3"]').attr('name');

	var Benzina = $('.active input[value="5"]').attr('name');
	var Diesel = $('.active input[value="6"]').attr('name');
	
	var Automatico = $('.active input[value="7"]').attr('name');
	var Manuale = $('.active input[value="8"]').attr('name');


	var alimentazione =  document.getElementsByClassName("alim");

	var categorie= document.getElementsByClassName("cat");
	
	var cambio= document.getElementsByClassName("camb");

	/*var appoggio = document.getElementById("appoggio");
	var lista = document.getElementById("automobiliDisponibili");
	lista.setAttribute("value", appoggio);
	console.log(document.getElementById("automobiliDisponibili"));*/

	for (var i = 0; i < categorie.length; i++) {
		var pippo = document.getElementsByClassName(categorie[i].innerHTML);
		for (var j = 0; j < pippo.length; j++) {
			console.log(categorie.length);
			pippo[j].style.display = 'block';
		}

	}

	for (var i = 0; i < alimentazione.length; i++) {
		var pippo = document.getElementsByClassName(alimentazione[i].innerHTML);
		for (var j = 0; j < pippo.length; j++) {
			console.log(alimentazione.length);
			pippo[j].style.display = 'block';
		}

	}
	
	for (var i = 0; i < cambio.length; i++) {
		var pippo = document.getElementsByClassName(cambio[i].innerHTML);
		for (var j = 0; j < pippo.length; j++) {
			console.log(cambio.length);
			pippo[j].style.display = 'block';
		}

	}
	console.log(Suv);
	
	
	if(Utilitaria != null && Sportiva != null && Suv!=null)
	{
		console.log("tutte");
	}

	else if (Utilitaria != null && Sportiva != null) {  
	for (var i = 0; i < categorie.length; i++) {
		if ( (!(categorie[i].innerHTML.includes(Utilitaria))&&(!(categorie[i].innerHTML.includes(Sportiva)) ))) // qui controllo se l'auto appartiene a quella categoria
		{
			var pippo = document.getElementsByClassName(categorie[i].innerHTML);
			for (var j = 0; j < pippo.length; j++) {
				pippo[j].style.display = 'none';
			}
		}
	}
	}
	else if (Utilitaria != null && Suv != null) {  
		for (var i = 0; i < categorie.length; i++) {
			if ( (!(categorie[i].innerHTML.includes(Utilitaria))&&(!(categorie[i].innerHTML.includes(Suv)) ))) // qui controllo se l'auto appartiene a quella categoria
			{
				var pippo = document.getElementsByClassName(categorie[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
		}
	else if (Suv != null && Utilitaria != null) {  
		for (var i = 0; i < categorie.length; i++) {
			if ( (!(categorie[i].innerHTML.includes(Utilitaria))&&(!(categorie[i].innerHTML.includes(Suv)) ))) // qui controllo se l'auto appartiene a quella categoria
			{
				var pippo = document.getElementsByClassName(categorie[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
		}
	else if (Suv != null && Sportiva != null) {  
		for (var i = 0; i < categorie.length; i++) {
			if ( (!(categorie[i].innerHTML.includes(Sportiva))&&(!(categorie[i].innerHTML.includes(Suv)) ))) // qui controllo se l'auto appartiene a quella categoria
			{
				var pippo = document.getElementsByClassName(categorie[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
		}

	else if (Utilitaria != null) {
		for (var i = 0; i < categorie.length; i++) {
			if (!(categorie[i].innerHTML.includes(Utilitaria))) // qui controllo se l'auto appartiene a quella categoria
			{
				var pippo = document.getElementsByClassName(categorie[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
	}
	else if (Suv != null) {
		for (var i = 0; i < categorie.length; i++) {
			if (!(categorie[i].innerHTML.includes(Suv))) // qui controllo se l'auto appartiene a quella categoria
			{ console.log(Suv);
				var pippo = document.getElementsByClassName(categorie[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
	}


	else if (Sportiva != null) {
		console.log("spo");

		for (var i = 0; i < categorie.length; i++) {
			if (!(categorie[i].innerHTML.includes(Sportiva))) // qui controllo se l'auto appartiene a quella categoria
			{

				var pippo = document
				.getElementsByClassName(categorie[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
	}



	if(Benzina != null && Diesel != null)
	{
		for (var i = 0; i < alimentazione.length; i++) {
			if ( (!(alimentazione[i].innerHTML.includes(Benzina))&&(!(alimentazione[i].innerHTML.includes(Diesel)) ))) // qui controllo se l'auto appartiene a quella categoria
			{
				var pippo = document.getElementsByClassName(alimentazione[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
	}

	else if (Benzina != null) {
		console.log("ben");
		for (var i = 0; i < alimentazione.length; i++) {
			if (!(alimentazione[i].innerHTML.includes(Benzina))) // qui controllo se l'auto appartiene a quella categoria
			{

				var pippo = document
				.getElementsByClassName(alimentazione[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}

	}
	else if (Diesel != null) {
		console.log("die");
		for (var i = 0; i < alimentazione.length; i++) {
			if (!(alimentazione[i].innerHTML.includes(Diesel))) // qui controllo se l'auto appartiene a quella categoria
			{

				var pippo = document
				.getElementsByClassName(alimentazione[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}

	}
	
	
	
	
	if(Manuale != null && Automatico != null)
	{
		for (var i = 0; i < cambio.length; i++) {
			if ( (!(cambio[i].innerHTML.includes(Manuale))&&(!(cambio[i].innerHTML.includes(Automatico)) ))) // qui controllo se l'auto appartiene a quella categoria
			{
				var pippo = document.getElementsByClassName(cambio[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}
	}

	else if (Manuale != null) {
		console.log("ben");
		for (var i = 0; i < cambio.length; i++) {
			if (!(cambio[i].innerHTML.includes(Manuale))) // qui controllo se l'auto appartiene a quella categoria
			{

				var pippo = document
				.getElementsByClassName(cambio[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}

	}
	else if (Automatico != null) {
		console.log("ben");
		for (var i = 0; i < cambio.length; i++) {
			if (!(cambio[i].innerHTML.includes(Automatico))) // qui controllo se l'auto appartiene a quella categoria
			{

				var pippo = document
				.getElementsByClassName(cambio[i].innerHTML);
				for (var j = 0; j < pippo.length; j++) {
					pippo[j].style.display = 'none';
				}
			}
		}

	}

}







function cercaConParolaChiave() {


	var marca = document.getElementsByClassName("marc");

	var parolaChiave = document.getElementsByClassName("ricerca").item(0);
	console.log(parolaChiave);
	for (var i = 0; i < marca.length; i++) {
		var pippo = document.getElementsByClassName(marca[i].innerHTML);
		for (var j = 0; j < pippo.length; j++) {
			pippo[j].style.display = 'block';
		}

	}

	if (parolaChiave != null) {



		for (var i = 0; i < marca.length; i++) {
			if (!(marca[i].innerHTML.includes(parolaChiave))) // qui controllo se l'auto appartiene a quella categoria
			{console.log("perchè?");
			var pippo = document.getElementsByClassName(marca[i].innerHTML);
			for (var j = 0; j < pippo.length; j++) {
				pippo[j].style.display = 'none';
			}
			}
		}
	}



}










