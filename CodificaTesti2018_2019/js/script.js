var listaCartoline = ["200","222","225"];
var cartolina;
var percorso;
var nodoTendina;
var nodoHeader;
var nodoBriciole;
var nodoDidascalia;
var nodoFinestra;
var nodoTimbri;
var menu = false;
var nodoAnalisiRetro = [];
var nodoAnalisiFronte = [];

traduzione = [];
traduzione[0] = { eng:"publisher", ita:"Editore:" };
traduzione[1] = { eng:"pubPlace", ita:"Luogo di Pubblicazione:"};
traduzione[2] = { eng:"date", ita:"Data"};
traduzione[3] = { eng:"distributor", ita:"Distributore:"};
traduzione[4] = { eng:"address", ita:"Indirizzo:"};
traduzione[5] = { eng:"title", ita:"Titolo:"};
traduzione[6] = { eng:"author", ita:"Autore:"};
traduzione[7] = { eng:"place", ita:"Destinazione"};
traduzione[8] = { eng:"bibl", ita:"Riferimenti opera"};
traduzione[9] = { eng:"msContents", ita:"Specifiche"};
traduzione[10] = {eng:"physDesc", ita:"Tipo:"};
traduzione[11] = {eng:"msIdentifier", ita:"Luogo di conservazione"};
traduzione[12] = {eng:"availability", ita:"Disponibilità:"};
traduzione[13] = {eng:"msDesc", ita:"Descrizione:"};
traduzione[14] = {eng:"objectType", ita:"Tipo:"};
traduzione[15] = {eng:"commonnoun", ita:"Nome comune"};
traduzione[16] = {eng:"person", ita:""}
traduzione[17] = {eng:"country", ita:"Paese:"};
traduzione[18] = {eng:"idno", ita:"Identificativo:"};
traduzione[19] = {eng:"textLang", ita:"Lingua:"};
traduzione[20] = {eng:"preposition", ita:"Preposizione"};
traduzione[21] = {eng:"material", ita:"Materiale:"};
traduzione[22] = {eng:"dimensions", ita:"Dimensione:"};
traduzione[23] = {eng:"stamp", ita:"Francobollo:"};
traduzione[24] = {eng:"conjuction", ita:"Congiunzione"};
traduzione[25] = {eng:"verb", ita:"Verbo"};
traduzione[26] = {eng:"surname", ita:"Cognome:"};
traduzione[27] = {eng:"sex", ita:"Sesso:"};
traduzione[28] = {eng:"propernoun", ita:"Nome proprio"};
traduzione[29] = {eng:"persName", ita:"Nome:"};
traduzione[30] = {eng:"placeName", ita:"Nome del luogo:"};
traduzione[31] = {eng:"relativepronoun", ita:"Pronome relativo"};
traduzione[32] = {eng:"language", ita:"Lingua:"};
traduzione[33] = {eng:"article", ita:"Articolo"};
traduzione[34] = {eng:"possessivepronoun", ita:"Pronome Possessivo"};
traduzione[35] = {eng:"adjective", ita:"Aggettivo"};
traduzione[36] = {eng:"adverb", ita:"Avverbio"};
traduzione[37] = {eng:"personalpronoun", ita:"Pronome Personale"};
traduzione[38] = {eng:"illegible", ita:"Illeggibile"};
traduzione[39] = {eng:"interrogative", ita:"Punto Interrogativo"};
traduzione[40] = {eng:"summary", ita:"Sintesi:"};
traduzione[41] = {eng:"settlement", ita:"Città:"};
traduzione[42] = {eng:"repository", ita:"Conservazione:"};
traduzione[43] = {eng:"district", ita:"Area:"};
traduzione[44] = {eng:"support", ita:"Supporto"};
traduzione[45] = {eng:"coma", ita:"Virgola"};
traduzione[46] = {eng:"fullstop", ita:"Punto"};
traduzione[47] = {eng:"collection", ita:"Collezione:"};

function caricaImmagine() { /*carica l'immagine della cartolina*/
	cartolina.setAttribute("src","img/"+percorso+"F.jpg");
	cartolina.setAttribute("usemap","#"+percorso+"F");  
}

function giraCartolina() { /*cambia tra e fronte retro al click*/
	if (cartolina.src.substr(length-5,1) == "F") {
		cartolina.setAttribute("src","img/"+percorso+"R.jpg");
		cartolina.setAttribute("usemap","#"+percorso+"R");  
	} else { 
		caricaImmagine();
	} 
}

function traduci() { /*traduce i tag dal xml (inglese con abbreviazioni) all'italiano */
	document.querySelectorAll('*').forEach(function(node) {
	if ((node.textContent != undefined) && (node.textContent != ""))
    for (i=0;i<traduzione.length;i++) {
       if (node.textContent == traduzione[i].eng) 
       node.textContent = traduzione[i].ita
    }});
}

function mostra(oggetto) { /*visualizza le informazioni relative all'area, gestisce eccezioni */
	nodoPopup.innerHTML = "";
    $('img[usemap]').rwdImageMaps();
    if (document.getElementById(oggetto) != null ) {
    	var temp = document.getElementById(oggetto).cloneNode(true);
    	if (oggetto != "artistiche") {
    		temp.removeAttribute("id");
    	}
    	if ((oggetto == "analisi_F") || (oggetto == "analisi_R")) {
    		if (temp.childNodes[1].tagName == "H4") {
    		temp.childNodes[1].textContent = "Trascrizione - Passare il mouse sulle parole per l'analisi";
    		} else { temp.childNodes[0].textContent = "Trascrizione - Passare il mouse sulle parole per l'analisi"}
    		temp.hidden = false;
    	}
		while(nodoDidascalia.childNodes.length > 0) {
			nodoDidascalia.removeChild(nodoDidascalia.lastChild);
		} 
		nodoDidascalia.appendChild(temp);
	} else if (oggetto == "datacorretta") {
		nodoDidascalia.innerHTML = "<div><h4>Data</h4><p>22/<s>11</s> 12 17</p></div>"
	} else {
		nodoDidascalia.innerHTML = "<div><h4>Dettaglio</h4><p>"+oggetto+"</p></div>";
	}
}

function contaTimbri() {  /*assegna un id numerato a ogni sezione timbro */
	var conta = 0;
	for (i=0;i<nodoTimbri.length;i++) {
	    if ((nodoTimbri[i] != null) && (nodoTimbri[i].textContent.includes("Timbro"))) {
	    	conta = conta + 1;
	    	nodoTimbri[i].setAttribute("id","Timbro"+conta);
	    }
	}
}

function caricaMenu() { /*individua la cartolina aperta e suggerisce le altre due */
	for (i=0;i<listaCartoline.length;i++) {
		if (listaCartoline[i] == percorso.substr(5,3))
		    continue;
        var link = document.createElement("a");
        link.setAttribute("href","7694_"+listaCartoline[i]+".html");
        var text = document.createTextNode("7694-"+listaCartoline[i]);
        link.appendChild(text);
        nodoBriciole.appendChild(link);
	}
}

function Menu() { /*apre e chiude il menu se è già aperto*/
   if (menu != true) {
      $(nodoTendina).slideDown();
      menu = true;
      nodoHeader.setAttribute("onclick","Menu()");
   } else {
      $(nodoTendina).slideUp();
      menu = false;
      nodoHeader.removeAttribute("onclick");
   }
}

function analisi(lato) { /*applica le definizioni agli elementi delle trascrizioni*/
    for (i=2;i<lato.length;i++) {
    	for (j=0;j<lato[i].childNodes.length;j=j+2) {
    		lato[i].childNodes[j+1].setAttribute("onmouseover","mostrAnalisi('"+lato[i].childNodes[j].textContent+"')");
    		}
    	for (j=0;j<lato[i].childNodes.length;j++) {
    		if (lato[i].childNodes[j].tagName == "DFN") {
    			lato[i].removeChild(lato[i].childNodes[j]);
    		}
    		var primocarattere = lato[i].childNodes[j].textContent.substring(0,1);
    		if ((primocarattere == (",")) || (primocarattere == ("."))) {
    			lato[i].childNodes[j-1].textContent = lato[i].childNodes[j-1].textContent.slice(0,-1);
    		}
        }
    }
}

function mostrAnalisi(elemento) { /*visualizza l'analisi */
	nodoPopup.innerHTML = "<h3>"+elemento+"</h3>";
}

function ruota(attivo) {
	if (attivo == false) {
		var temp = document.getElementById("cartolina").cloneNode(true);
		nodoFinestra.appendChild(temp);
		nodoFinestra.hidden = false;
		nodoFinestra.setAttribute("onclick","ruota(true)");
		document.getElementsByTagName("main")[0].style.opacity = "0.3";
	} else {
		document.getElementsByTagName("main")[0].style.opacity = "1";
		nodoFinestra.removeAttribute("onclick");
		nodoFinestra.hidden = true;
		nodoFinestra.innerHTML = "";
	}
}


window.onload = Load;

function Load() {
	cartolina = document.getElementById("cartolina");
    percorso = document.getElementsByTagName("h1")[0].textContent.substring(10,18);
	nodoTendina = document.getElementById("tendina");
	nodoHeader = document.getElementsByTagName("header")[0];
	nodoDidascalia = document.getElementById("figcaption");
	nodoTimbri = document.getElementById("affrancatura").childNodes;
	nodoBriciole = document.getElementsByTagName("h2")[0];
	nodoAnalisiRetro = document.getElementById("analisi_R").childNodes;
	nodoPopup = document.getElementById("popup");
	nodoImmagine = document.getElementsByTagName("figure")[0];
	nodoFinestra = document.getElementById("finestra");
    caricaImmagine();
    caricaMenu();
    cartolina.onclick = giraCartolina;
    contaTimbri();
    traduci();
    analisi(nodoAnalisiRetro);
    if (document.getElementById("analisi_F") != null) {
    	nodoAnalisiFronte = document.getElementById("analisi_F").childNodes;
    	analisi(nodoAnalisiFronte)
    }
}