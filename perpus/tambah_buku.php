<?php
require_once __DIR__ . "/model/Buku.php";
$buku = new Buku();

if (isset($_POST['simpan'])) {
    $buku->simpan($_POST['judul'], $_POST['penulis'], $_POST['ID']);
    header("Location: buku.php");
}
?>

<h2>Tambah Buku</h2>

<form method="post">
    Judul: <input type="text" name="judul" required><br><br>
    Penulis: <input type="text" name="penulis" required><br><br>
    Stok: <input type="number" name="ID" required><br><br>
    <button name="simpan">Simpan</button>
</form>

<a href="buku.php">⬅ Kembali</a>
