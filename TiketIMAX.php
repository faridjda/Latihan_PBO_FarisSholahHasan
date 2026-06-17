<?php
require_once 'Tiket.php';

class TiketIMAX extends Tiket {
    private $kacamata3dId;
    private $efekGerakFitur;

    public function __construct($id, $nama, $jadwal, $kursi, $harga, $kacamataId, $efek) {
        parent::__construct($id, $nama, $jadwal, $kursi, $harga);
        $this->kacamata3dId = $kacamataId;
        $this->efekGerakFitur = $efek;
    }

    public function hitungTotalHarga() {
        // IMAX ada biaya tambahan 20% untuk teknologi
        return ($this->hargaDasarTiket * 1.2) * $this->jumlah_kursi;
    }

    public function tampilkanInfoFasilitas() {
        return "Studio IMAX: Kacamata ID $this->kacamata3dId, Fitur $this->efekGerakFitur.";
    }
}