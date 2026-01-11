<?php
require_once __DIR__ . "/../config/koneksi.php";

class Peminjaman {

    public function simpan($id_buku, $id_anggota) {
        $db = Koneksi::connect();
        $tgl_pinjam = date('Y-m-d');
        $tgl_kembali = date('Y-m-d', strtotime('+7 days'));

        $stmt = $db->prepare(
            "INSERT INTO peminjaman
            (id_buku, id_anggota, tgl_pinjam, tgl_kembali)
            VALUES (?, ?, ?, ?)"
        );

        $stmt->bind_param(
            "iiss",
            $id_buku,
            $id_anggota,
            $tgl_pinjam,
            $tgl_kembali
        );

        return $stmt->execute();
    }

    public function tampil() {
        return Koneksi::connect()->query(
            "SELECT b.judul, a.nama, p.tgl_pinjam, p.tgl_kembali
             FROM peminjaman p
             JOIN buku b ON p.id_buku = b.id_buku
             JOIN anggota a ON p.id_anggota = a.id_anggota"
        );
    }
}
