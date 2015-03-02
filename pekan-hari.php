<? 
$page = 1;
$judul = "Pekan ini";
include "hariini.php";
include "header.php";
?>
		<div class="container">
			<div class="page-header">
				<h1>Kajian Rutin</h1>
				<p><?echo $bulan." ".$tahun." | ".$jam.":".$menit;?></p> 
			</div>
			<table class="table">
			<thead>
				<tr>
					<th>Hari</th>
					<th>Kajian</th>
					<th>Oleh</th>
					<th>Tempat</th>
					<th>Waktu</th>
				</tr>
			</thead>
			<tbody>
			
<?php
// Ambil semua data kajian rutin, kelompokkan sesuai hari

$queryAll = "SELECT * FROM `dt_jadwal_kajian` ORDER BY `urutan`";
$result3 = mysqli_query($conn, $queryAll);
$jumlahBaris1 = mysqli_num_rows($result3);

if ($jumlahBaris>0){
	while($baris = mysqli_fetch_assoc($result3)){			
			echo "<tr>";
if ($baris["namaHari"]=="Jumat")
			{
				$hariTulis = "Jum'at";
			}
			else
			{
				$hariTulis = $baris["namaHari"];
			}
			echo "<td>".$hariTulis."</td>";
			echo "<td>".$baris["kajian"]."</td>";
			echo "<td>".$baris["pengisi"]."</td>";
			echo "<td>".$baris["tempat"]."</td>";
			echo "<td>".$baris["waktu"]."</td>";
			echo "</tr>";
		}
	echo "</tbody></table>";
	}
else{
		echo "<h3>Jadwal kajian rutin tidak ada</h3></div>";
}
?>
<?include "footer.php";?>
