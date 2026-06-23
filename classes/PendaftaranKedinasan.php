<?php

require_once "Pendaftaran.php";

class PendaftaranKedinasan extends Pendaftaran
{
    protected $skIkatanDinas;
    protected $instansiSponsor;

    public function __construct(
        $id_pendaftaran,
        $nama_calon,
        $asal_sekolah,
        $nilai_ujian,
        $biayaPendaftaranDasar,
        $skIkatanDinas,
        $instansiSponsor
    ) {
        parent::__construct(
            $id_pendaftaran,
            $nama_calon,
            $asal_sekolah,
            $nilai_ujian,
            $biayaPendaftaranDasar
        );

        $this->skIkatanDinas = $skIkatanDinas;
        $this->instansiSponsor = $instansiSponsor;
    }

    public function hitungTotalBiaya()
    {
        return $this->biayaPendaftaranDasar;
    }

    public function tampilkanInfoJalur()
    {
        return "Jalur Kedinasan";
    }

    public static function getDataKedinasan($conn)
    {
        $sql = "SELECT * FROM tabel_pendaftaran
                WHERE jalur_pendaftaran='Kedinasan'";

        return mysqli_query($conn, $sql);
    }
}
?>