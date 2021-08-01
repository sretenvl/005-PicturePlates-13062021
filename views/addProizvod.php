<div id = "dodavanjeProizvodaProizvod" class = "drzacAdm">
	<div class = "row">		
		<form method = "POST" enctype = "multipart/form-data" action= "models/addProizvod.php">
			<h2>Dodaj Proizvod</h2>
			<lable>Naziv Proizvoda</lable>
			<br/>
			<input type = "text" name = "naziv">
			<br/>
			<br/>
			<label>Slika proizvoda</label>
			<br/>
			<input type = "file" name = "slika">
			<br/>
			<br/>
			<label>Alt slike</label>
			<br/>
			<input type = "text" name = "altSlike" placeholder = "Dodaj alt">
			<br/>
			<br/>
			<label>Cena</label>
			<br/>
			<input type = "number" name = "cena">
			<br/>
			<br/>
			<label>Opis proizvoda</label>
			<br/>
			<input type = "text" name = "opis">
			<br/>
			<br/>
			<button class = "dugmeAdm" type = "submit" name = "dodajP">Dodaj</button>
		</form>
	</div>
	<div id = "pozadinaAdd" class = "admPozadina"></div>
</div>