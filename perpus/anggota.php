<?php
require_once __DIR__ . "/model/Anggota.php";
$anggota = new Anggota();
$data = $anggota->tampil();
?>

<h2>Data Anggota</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Nama</th>
</tr>

<?php while ($row = $data->fetch_assoc()): ?>
<tr>
    <td><?= $row['id_anggota'] ?></td>
    <td><?= $row['nama'] ?></td>
</tr>
<?php endwhile; ?>
</table>

<a href="index.php">⬅ Kembali</a>
