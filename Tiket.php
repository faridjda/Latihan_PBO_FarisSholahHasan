<?php

abstract class Tiket {
    // Properti Enkapsulasi (protected) sesuai kolom tabel database
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $hargaDasarTiket;

    // Constructor untuk memetakan data dari database ke properti objek
    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket) {
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->hargadasarTiket = $hargaDasarTiket;
    }

    // Abstract method: wajib diimplementasikan oleh kelas anak
    abstract public function hitungTotalHarga();
    abstract public function tampilkanInfoFasilitas();
    
    // Getter untuk mengakses data (karena properti bersifat protected)
    public function getNamaFilm() {
        return $this->nama_film;
    }
}
?>