<?php
include "connect.php";

//Set timezone ke Indonesia Barat (Jakarta)
date_default_timezone_set("Asia/Jakarta");

// Cari tahu hari ini namanya hari apa

$today = getdate();
$indexHari = $today['wday']; // Ambil data indeks hari ini (0 - 6)
$tanggal = $today['mday'];
$bulan = $today['month'];
$tahun = $today['year'];
$jam = $today['hours'];
$menit = $today['minutes'];
$query = "SELECT `namaHari` FROM `dt_hari` WHERE `kodeHari` LIKE '$indexHari'";
$result = mysqli_query($conn,$query);
$namaHari = mysqli_fetch_assoc($result);
$namaHariIni = $namaHari["namaHari"];

// Cari tahu kajian hari ini apa saja

$queryInfo = "SELECT * FROM `dt_jadwal_kajian` WHERE `namaHari` LIKE '$namaHariIni'  ORDER BY `waktu`";
$result2 = mysqli_query($conn, $queryInfo);
$jumlahBaris = mysqli_num_rows($result2);

// Ambil semua data kajian rutin, kelompokkan sesuai hari
$queryAll = "SELECT * FROM `dt_jadwal_kajian`";
$result3 = mysqli_query($conn, $queryAll);
$jumlahBaris1 = mysqli_num_rows($result3);
while($hasil = mysqli_fetch_assoc($result3)){
//print_r($hasil); echo "<br>";
}
?>
