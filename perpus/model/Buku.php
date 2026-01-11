<?php
require_once __DIR__ . "/../config/koneksi.php";

class Buku {

    public function tampil() {
        return Koneksi::connect()->query("SELECT * FROM buku");
    }

    public function simpan($judul, $penulis, $stok) {
        $db = Koneksi::connect();
        $stmt = $db->prepare(
            "INSERT INTO buku (judul, penulis, stok) VALUES (?, ?, ?)"
        );
        $stmt->bind_param("ssi", $judul, $penulis, $stok);
        return $stmt->execute();
    }
}
