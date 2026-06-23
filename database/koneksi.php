<?php

$host = "localhost";
$user = "root";
$password = "";
$database = "db_simulasi_pbo_trpl1b_juanita_wiji_mahrani";

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>