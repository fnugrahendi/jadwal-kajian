<?
$page = 3;
$judul = "Tambah Jadwal";
include "header.php";
include "connect.php";

// Tangkap data yang diinputkan dari form sebelumnya
$hari = $_POST["hari"];
$hariTulis = $hari;
$kajian = $_POST["kajian"];
$nama = $_POST["nama"];
$tempat = $_POST["tempat"];
$waktu = $_POST["waktu"];
$urutan = 0;

//ganti spesial char
$nama = str_replace("'","\'",$nama);
$tempat = str_replace("'","\'",$tempat);
$kajian = str_replace("'","\'",$kajian);
print $kajian;

//echo $hari, $kajian, $tempat, $nama, $waktu;
switch ($hari){
	case "Senin":
		$urutan = 0;
		break;
	case "Selasa":
		$urutan = 1;
		break;
	case "Rabu":
		$urutan = 2;
		break;
	case "Kamis":
		$urutan = 3;
		break;
	case "Jum'at":
		$urutan = 4;
		$hari = "Jumat";
		$hariTulis = "Jum'at";
		break;
	case "Sabtu":
		$urutan = 5;
		break;
	case "Ahad":
		$urutan = 6;
		break;
	}

// Masukkin database
$inputQuery = "INSERT INTO `dt_jadwal_kajian` (`namaHari`, `urutan`,`kajian`, `pengisi`, `tempat`, `waktu`) VALUES ('$hari','$urutan','$kajian','$nama','$tempat','$waktu');";
$runInputQuery = mysqli_query($conn, $inputQuery);
?>

<div class="container">
			<div class="page-header">
				<h1>Tambah Jadwal</h1>		
<?
if($runInputQuery){
	echo "<p>Berhasil ditambah Kajian setiap hari ".$hariTulis." jam ".$waktu."</p> ";
	echo "<p>Kajian ".$kajian." oleh ".$nama." di ".$tempat."</p>";
}
else{
	echo "<p>Maaf input gagal. Cek lagi </p></div>";
		}

//include "form.php";
include "footer.php";
?>