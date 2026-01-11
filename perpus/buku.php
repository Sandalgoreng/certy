<?php
require_once __DIR__ . "/model/Buku.php";
$buku = new Buku();
$data = $buku->tampil();
?>

<h2>Data Buku</h2>
<a href="tambah_buku.php">➕ Tambah Buku</a>

<table border="1">
<tr>
    <th>Judul</th>
    <th>Penulis</th>
    <th>ID</th>
</tr>

<?php while ($row = $data->fetch_assoc()): ?>
<tr>
    <td><?= $row['judul'] ?></td>
    <td><?= $row['penulis'] ?></td>
    <td><?= $row['ID'] ?></td>
</tr>
<?php endwhile; ?>
</table>

<a href="index.php">⬅ Kembali</a>
