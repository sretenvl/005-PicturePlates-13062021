<?php
    include "models/proizvodi.php";
?>

<div id = "drzacProizvoda">
    <div id = "proizvodiW" class = "row">
        <div id = "selectori" class = "col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
            <h2>Filters</h2>
            <div id = "prikaz">
                <div id = "manjePrikaz"><i class = "fas fa-th-large"></i></div>
                <div id = "vecePrikaz"><i class="fas fa-th"></i></div>
            </div>
            <div id = "tipProizvoda" class = "col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8"></div>
            <div id = "ceneProizvoda">
                <form action="#" method="GET">
                    <lable>Cena u opsegu</lable>
                    <input type = "range" min = "0" max ="5000" value = "0" id = "cenaOpseg"/>
                    <span id = "trenutnaCena">0</span>
                </form>
            </div>
            <div class = "filterPrikaz">
                <a href ="#" id = "dvekolona">
                    <i class="icon-th-large"></i>
                </a>
                <a href ="#" id = "trikolona">
                    <i class="icon-th"></i>
                </a>
            </div>
            <button id = "sortirajRastuce" class = "dugmeSort col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">Sortiraj sve proizvode po rastućoj ceni</button>
            <button id = "sortirajOpadajuce" class = "dugmeSort col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">Sortiraj sve proizvode po opadajućoj ceni</button>
            <button id = "sortirajImeRastuce" class = "dugmeSort col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">Sortiraj sva imena proizvoda - rastuće</button>
            <button id = "sortirajImeOpadajuce" class = "dugmeSort col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">Sortiraj sva imena proizvoda - opadajuće</button>
        </div>
        <div class="drzac col-12 col-sm-12 col-mg-12 col-lg-9 col-xl-9" id = "drzacKartice">
            <div id = "proizvodi" class = "row">
            </div>
        </div>
    </div>

</div>

