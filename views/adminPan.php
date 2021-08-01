<?php
    $upitUser = "SELECT u.id AS id, u.username AS username, u.password AS password, u.email AS email, u.idTip AS idTip, t.naziv AS userTip FROM users AS u INNER JOIN tipkorisnika AS t ON u.idTip = t.idTip";
    $users = $konekcija->query($upitUser)->fetchAll();

    $upitPostera = "SELECT idP, naziv, opis, cena, slika, manjaSlika, altSlike FROM posteri";
    $posteri = $konekcija->query($upitPostera)->fetchAll();

    echo "<div class = 'container'>";
    if(isset($_GET['promena'])){
        if($_GET['promena'] == "updateProizvod"){
            include "views/updateProizvod.php";
        }
        elseif($_GET['promena'] == "addProizvod"){
            include "views/addProizvod.php";
        }
        elseif($_GET['promena'] == "update"){
            include "views/update.php";
        }
    };
?>
    <div class = "row">
        <h1>Users</h1>
        <a href ="models/logout.php" class = "dugmeAdm">LOGOUT</a>
        <table class = "tabela">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>Tip</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <?php foreach($users as $user): ?>
            <tr>
                <th><?=$user->id?></th>
                <th><?=$user->username?></th>
                <th><?=$user->password?></th>
                <th><?=$user->email?></th>
                <th><?=$user->userTip?></th>
                <th><a href = "index.php?promena=update&id=<?=$user->id?>&user=<?=$user->username?>&password=<?=$user->password?>&email=<?=$user->email?>&tip=<?=$user->idTip?>" class = "dugmeAdm"?>EDIT</a></th>
                <th><a href = "models/brisanje.php?&id=<?=$user->id?>&userBrisanje=da" name = "brisanje" class = "dugmeAdm">DELETE</a></th>
            </tr>
            <?php endforeach; ?>
        </table>
        <h1>Proizvodi</h1>
        <a href ="index.php?promena=addProizvod" id = "dodajProizvod">DODAJ PROIZVOD</a>
        <table class = "tabela">
            <tr>
                <th>ID</th>
                <th>Naziv</th>
                <th>Opis</th>
                <th>Cena</th>
                <th>Slika</th>
                <th>Manja Slika</th>
                <th>Alt</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <?php foreach($posteri as $poster): ?>
            <tr>
                <th><?=$poster->idP?></th>
                <th><?=$poster->naziv?></th>
                <th><?=$poster->opis?></th>
                <th><?=$poster->cena?></th>
                <th><?=$poster->slika?></th>
                <th><?=$poster->manjaSlika?></th>
                <th><?=$poster->altSlike?></th>
                <th><a href = "index.php?promena=updateProizvod&id=<?=$poster->idP?>&naziv=<?=$poster->naziv?>&opis=<?=$poster->opis?>&cena=<?=$poster->cena?>&altSlike=<?=$poster->altSlike?>" class = "dugmeAdm"?>EDIT</a></th>
                <th><a href = "models/brisanje.php?&id=<?=$poster->idP?>&posterBrisanje=da" name = "brisanje" class = "dugmeAdm">DELETE</a></th>
            </tr>
            <?php endforeach; ?>
        </table>
    </div>
</div>
<script type="text/javascript" src="assets/js/efekti.js"></script>