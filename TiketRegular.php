<?php
require_once 'Tiket.php';

class TiketRegular extends Tiket {
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($id, $nama, $jadwal, $kursi, $harga, $tipeAudio, $lokasiBaris) {
        parent::__construct($id, $nama, $jadwal, $kursi, $harga);
        $this->tipeAudio = $tipeAudio;
        $this->lokasiBaris = $lokasiBaris;
    }

    public function hitungTotalHarga() {
        // Harga standar tanpa tambahan
        return $this->hargaDasarTiket * $this->jumlah_kursi;
    }

    public function tampilkanInfoFasilitas() {
        return "Studio Regular: Audio $this->tipeAudio, Baris $this->lokasiBaris.";
    }
}