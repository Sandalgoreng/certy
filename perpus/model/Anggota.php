<?php
require_once __DIR__ . "/../config/koneksi.php";

class Anggota {
    public function tampil() {
        return Koneksi::connect()->query("SELECT * FROM anggota");
    }
}
