window.onload = function(){
    proizvodi();
	dohvatiSveProizvode();
    listaProizvoda();
    document.getElementById("dvekolona").addEventListener("click", function(){
        $(".proizvod").css("width", "50%");
    });
    document.getElementById("trikolona").addEventListener("click", function(){
        $(".proizvod").css("width", "33%");
    });
    document.getElementById("cenaOpseg").addEventListener("change", function(){
        filtriranjeCene(this.value);
        $("#trenutnaCena").html(this.value);
    });
};
var nizPrikazanihProizvoda = [];

//ISPISIVANJE DROPDOWN LISTE MARKI
function proizvodi(){
    $.ajax({
        url : "assets/log/proizvodi.json",
        method : "GET",
        type : "json",
        success : function(tipP) {
            let select = "<select id='proizvodDrop'><option value='0'>Sve kategorije</option>";


            for(let m of tipP) {
                select += `<option value='${m.naziv}'>${m.naziv}</option>`;
            }
            select += "</select>";
            document.querySelector("#tipProizvoda").innerHTML = select;
            document.getElementById("proizvodDrop").addEventListener("change", function(){
                filtrirajPoTipu(this.value);
            });

            document.getElementById("sortirajRastuce").addEventListener("click", sortirajSveRastuce);
            document.getElementById("sortirajOpadajuce").addEventListener("click", sortirajSveOpadajuce);
            document.getElementById("sortirajImeRastuce").addEventListener("click", sortirajImeRastuce);
            document.getElementById("sortirajImeOpadajuce").addEventListener("click", sortirajImeOpadajuce);
        },
        error : function(xhr, error, status) {
            alert(status);
        }
    });
}

function listaProizvoda(){
    $.ajax({
        url : "assets/log/proizvodi.json",
        method : "GET",
        type : "json",
        success : function(data) {
            nizPrikazanihProizvoda = data;
        },
        error : function(xhr, error, status) {
            alert(status);
        }
    });
}

//FILTRIRANJE PO MARKI
function filtrirajPoTipu(vrednost) {
    $.ajax({
        url : "assets/log/proizvodi.json",
        method : "GET",
        type : "json",
        success : function(data) {
            let izabranaMarka = vrednost;
            nizPrikazanihProizvoda = [];

            if(izabranaMarka != '0'){
                data.forEach(proizvod => {
                    if(proizvod.naziv == izabranaMarka){
                        nizPrikazanihProizvoda.push(proizvod);
                    }
                });
            }
            else { 
                nizPrikazanihProizvoda = data;
                dohvatiSveProizvode();
            }
            dodajInicijalneProizvode(nizPrikazanihProizvoda);
        },
        error : function(xhr, error, status) {
            alert(status);
        }
    });
}

//FILTRIRANJE CENE
function filtriranjeCene(cenaMax){
    $.ajax({
        url : "assets/log/proizvodi.json",
        method : "GET",
        type : "json",
        success : function(data){
            nizPrikazanihProizvoda = [];
            if(cenaMax != '0'){
                data.forEach(proizvod => {
                    if(proizvod.cena <= cenaMax){
                        nizPrikazanihProizvoda.push(proizvod);
                    }
                });
            }
            else { 
                nizPrikazanihProizvoda = [];
            }
            if(cenaMax <= '1000'){
                nizPrikazanihProizvoda = [];
            }
            dodajInicijalneProizvode(nizPrikazanihProizvoda);
        },
        error : function(xhr, error, status) {
            alert(status);
        }
    });
}


//OSNOVNO SORTIRANJE PO CENI OD MANJE KA VECE
function sortirajSveRastuce() {
    let tempNiz = nizPrikazanihProizvoda;
    tempNiz.sort((a,b) => {
        if(a.cena == b.cena)
            return 0;
        return a.cena < b.cena ? -1 : 1;
    });
    dodajInicijalneProizvode(tempNiz);
}

//OSNOVNO SORTIRANJE PO CENI OD VECE KA MANJE
function sortirajSveOpadajuce() {
    let tempNiz = nizPrikazanihProizvoda;
    tempNiz.sort((a,b) => {
        if(a.cena == b.cena)
            return 0;
        return a.cena > b.cena ? -1 : 1;
    });
    dodajInicijalneProizvode(tempNiz);
}

//OSNOVNO SORTIRANJE A-Z
function sortirajImeRastuce() {
    let tempNiz = nizPrikazanihProizvoda;
    tempNiz.sort((a,b) => {
        if(a.naziv == b.naziv)
            return 0;
        return a.naziv < b.naziv ? -1 : 1;
    });
    dodajInicijalneProizvode(tempNiz);
}

//OSNOVNO SORTIRANJE Z-A
function sortirajImeOpadajuce() {
    let tempNiz = nizPrikazanihProizvoda;
    tempNiz.sort((a,b) => {
        if(a.naziv == b.naziv)
            return 0;
        return a.naziv > b.naziv ? -1 : 1;
    });
    dodajInicijalneProizvode(tempNiz);
}

//ISPISUJE SVE PROIZVODE
function dohvatiSveProizvode() {
    $.ajax({
        url : "assets/log/proizvodi.json",
        method : "GET",
        type : "json",
        success : function(data) {
            dodajInicijalneProizvode(data);
        },
        error : function(xhr, error, status) {
            alert(status);
        }
    });
}

//PROIZVODI ISPIS
function dodajInicijalneProizvode(products){
    document.querySelector("#proizvodiZaPrikaz").innerHTML = pripremiDiv();

    $(".drzacSlike img").hover(function(){
        $(this).animate({width : '100%'}, 800);
    },
    function(){
        $(this).animate({width : '80%'}, 800);
    });
    $(".buttonKupi").hover(function(){
        $(this).css("background-color", "#e6e7e8");
    },
    function(){
        $(this).css("background-color", "white");;
    });
    $(".logStartDiv").click(function(){
		$('#LI').css("display", "block").animate({opacity : 1}, 1000);
	});

    function pripremiDiv() {
        let html = "";
        products.forEach(p => {
            html += 
            `<div class="proizvod col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
            	<div class = "drzacProizvoda"> 
                    <div class = "drzacSlike">
	                   <img src=${p.slika} alt=${p.altSlike}/>
                    </div>
	                <div class = "drzacInfoProizvoda">
		                <div class = "leviW">
                            <h3>${p.naziv}</h3>
    		                <div class="cenaW">
    		                    <span>Cena:</span>
    		                    <span class = "cena">${p.cena} RSD</span>
    		                </div>
                        </div>
                        <div class = "kupiW">
                            <a href = "#" 
                            type="button" class = "buttonKupi logStartDiv">KUPI</a>
                        </div> 
	                </div>        
                </div>
            </div>`
        });
        return html;
    }
}