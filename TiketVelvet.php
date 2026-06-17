<?php
require_once 'Tiket.php';

class TiketVelvet extends Tiket {
    private $bantalSelimutPack;
    private $layananButler;

    public function __construct($id, $nama, $jadwal, $kursi, $harga, $bantal, $butler) {
        parent::__construct($id, $nama, $jadwal, $kursi, $harga);
        $this->bantalSelimutPack = $bantal; // boolean
        $this->layananButler = $butler;     // boolean
    }

    public function hitungTotalHarga() {
        // Velvet ada biaya tambahan flat untuk kemewahan
        $tambahan = ($this->bantalSelimutPack ? 50000 : 0) + ($this->layananButler ? 30000 : 0);
        return ($this->hargaDasarTiket + $tambahan) * $this->jumlah_kursi;
    }

    public function tampilkanInfoFasilitas() {
        return "Studio Velvet: " . ($this->bantalSelimutPack ? "Dengan Bantal/Selimut, " : "") . 
               ($this->layananButler ? "Layanan Butler tersedia." : "Tanpa Butler.");
    }
}