<?php
require_once __DIR__ . "/model/Peminjaman.php";
$p = new Peminjaman();

if (isset($_POST['pinjam'])) {
    $p->simpan($_POST['id_buku'], $_POST['id_anggota']);
}

$data = $p->tampil();
?>

<h2>Peminjaman Buku</h2>

<form method="post">
    ID Buku: <input type="number" name="id_buku" required><br><br>
    ID Anggota: <input type="number" name="id_anggota" required><br><br>
    <button name="pinjam">Pinjam</button>
</form>

<hr>

<table border="1">
<tr>
    <th>Buku</th>
    <th>Anggota</th>
    <th>Tgl Pinjam</th>
    <th>Tgl Kembali</th>
</tr>

<?php while ($row = $data->fetch_assoc()): ?>
<tr>
    <td><?= $row['judul'] ?></td>
    <td><?= $row['nama'] ?></td>
    <td><?= $row['tgl_pinjam'] ?></td>
    <td><?= $row['tgl_kembali'] ?></td>
</tr>
<?php endwhile; ?>
</table>

<a href="index.php">⬅ Kembali</a>
