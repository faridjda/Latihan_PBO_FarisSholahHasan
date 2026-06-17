<?php

class Database {
    // Properti konfigurasi database
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "db_latihan_pbo_ti-1c_farissholahhasan";
    
    // Variabel untuk menampung koneksi
    public $conn;

    // Constructor: otomatis berjalan saat objek Database dibuat
    public function __construct() {
        $this->connect();
    }

    private function connect() {
        try {
            // Membuat koneksi menggunakan PDO
            $this->conn = new PDO("mysql:host=$this->host;dbname=$this->database", $this->username, $this->password);
            
            // Mengatur mode error agar melempar exception
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
            // Pesan sukses
            echo "Koneksi ke database berhasil!";
            
        } catch (PDOException $e) {
            // Pesan jika koneksi gagal
            die("Koneksi database gagal: " . $e->getMessage());
        }
    }
}

// Inisialisasi objek untuk menghubungkan database
$db = new Database();

?>