<?php

require_once "database/koneksi.php";

require_once "classes/Pendaftaran.php";
require_once "classes/PendaftaranReguler.php";
require_once "classes/PendaftaranPrestasi.php";
require_once "classes/PendaftaranKedinasan.php";

?>

<!DOCTYPE html>
<html>
<head>
    <title>Data Pendaftaran Mahasiswa Baru</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            margin:20px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            margin-bottom:30px;
        }

        th, td{
            border:1px solid black;
            padding:8px;
        }

        th{
            background:#ddd;
        }

        h2{
            background:#f2f2f2;
            padding:10px;
        }
    </style>
</head>
<body>

<h1>Data Pendaftaran Mahasiswa Baru</h1>

<!-- JALUR REGULER -->
<h2>Jalur Reguler</h2>

<table>
<tr>
    <th>ID</th>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Nilai</th>
    <th>Prodi</th>
    <th>Lokasi Kampus</th>
    <th>Info Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php

$dataReguler = PendaftaranReguler::getDataReguler($conn);

while($row = mysqli_fetch_assoc($dataReguler))
{
    $obj = new PendaftaranReguler(
        $row['id_pendaftaran'],
        $row['nama_calon'],
        $row['asal_sekolah'],
        $row['nilai_ujian'],
        $row['biaya_pendaftaran_dasar'],
        $row['pilihan_prodi'],
        $row['lokasi_kampus']
    );

    echo "<tr>";
    echo "<td>".$row['id_pendaftaran']."</td>";
    echo "<td>".$row['nama_calon']."</td>";
    echo "<td>".$row['asal_sekolah']."</td>";
    echo "<td>".$row['nilai_ujian']."</td>";
    echo "<td>".$row['pilihan_prodi']."</td>";
    echo "<td>".$row['lokasi_kampus']."</td>";
    echo "<td>".$obj->tampilkanInfoJalur()."</td>";
    echo "<td>Rp ".number_format($obj->hitungTotalBiaya(),0,",",".")."</td>";
    echo "</tr>";
}

?>

</table>

<!-- JALUR PRESTASI -->
<h2>Jalur Prestasi</h2>

<table>
<tr>
    <th>ID</th>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Nilai</th>
    <th>Jenis Prestasi</th>
    <th>Tingkat Prestasi</th>
    <th>Info Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php

$dataPrestasi = PendaftaranPrestasi::getDataPrestasi($conn);

while($row = mysqli_fetch_assoc($dataPrestasi))
{
    $obj = new PendaftaranPrestasi(
        $row['id_pendaftaran'],
        $row['nama_calon'],
        $row['asal_sekolah'],
        $row['nilai_ujian'],
        $row['biaya_pendaftaran_dasar'],
        $row['jenis_prestasi'],
        $row['tingkat_prestasi']
    );

    echo "<tr>";
    echo "<td>".$row['id_pendaftaran']."</td>";
    echo "<td>".$row['nama_calon']."</td>";
    echo "<td>".$row['asal_sekolah']."</td>";
    echo "<td>".$row['nilai_ujian']."</td>";
    echo "<td>".$row['jenis_prestasi']."</td>";
    echo "<td>".$row['tingkat_prestasi']."</td>";
    echo "<td>".$obj->tampilkanInfoJalur()."</td>";
    echo "<td>Rp ".number_format($obj->hitungTotalBiaya(),0,",",".")."</td>";
    echo "</tr>";
}

?>

</table>

<!-- JALUR KEDINASAN -->
<h2>Jalur Kedinasan</h2>

<table>
<tr>
    <th>ID</th>
    <th>Nama</th>
    <th>Asal Sekolah</th>
    <th>Nilai</th>
    <th>SK Ikatan Dinas</th>
    <th>Instansi Sponsor</th>
    <th>Info Jalur</th>
    <th>Total Biaya</th>
</tr>

<?php

$dataKedinasan = PendaftaranKedinasan::getDataKedinasan($conn);

while($row = mysqli_fetch_assoc($dataKedinasan))
{
    $obj = new PendaftaranKedinasan(
        $row['id_pendaftaran'],
        $row['nama_calon'],
        $row['asal_sekolah'],
        $row['nilai_ujian'],
        $row['biaya_pendaftaran_dasar'],
        $row['sk_ikatan_dinas'],
        $row['instansi_sponsor']
    );

    echo "<tr>";
    echo "<td>".$row['id_pendaftaran']."</td>";
    echo "<td>".$row['nama_calon']."</td>";
    echo "<td>".$row['asal_sekolah']."</td>";
    echo "<td>".$row['nilai_ujian']."</td>";
    echo "<td>".$row['sk_ikatan_dinas']."</td>";
    echo "<td>".$row['instansi_sponsor']."</td>";
    echo "<td>".$obj->tampilkanInfoJalur()."</td>";
    echo "<td>Rp ".number_format($obj->hitungTotalBiaya(),0,",",".")."</td>";
    echo "</tr>";
}

?>

</table>

</body>
</html>