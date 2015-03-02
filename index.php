<? 
$page = 0;
$judul = "Hari ini";
include "hariini.php";
include "header.php";
if ($namaHariIni == "Jumat"){
	$namaHariIniTulis = "Jum'at";}
else {$namaHariIniTulis = $namaHariIni;}
?>
		<div class="container">
			<div class="page-header">
				<h1>Kajian Hari Ini</h1>
				<p>Hari <?echo $namaHariIniTulis;?>, <?echo $tanggal." ".$bulan." ".$tahun." | ".$jam.":".$menit;?></p> 
                                <div id="jadwal"></div>
<? include "jadwalsholat.php";?>			
			</div>
			<div class="row">
<?php
if ($jumlahBaris>0){
	while($baris = mysqli_fetch_assoc($result2)){		
		echo "<div class='col-md-4'>";
		echo "<h3>".$baris["kajian"]."</h3>";
		echo "<p>".$baris["pengisi"]."</p>";
		echo "<p>".$baris["tempat"]."</p>";
		echo "<p>".$baris["waktu"]."</p></div>";
	}
}
else{
	echo "<div class='col-md-4'>";
		echo "<h3>Tidak ada kajian rutin untuk hari ini</h3></div>";
}?>
				
			</div>
<?include "footer.php";?>