# 📚 Program Perpustakaan

## 📌 Deskripsi

Program Perpustakaan merupakan aplikasi yang dibuat untuk membantu proses pengelolaan data perpustakaan, khususnya dalam kegiatan peminjaman dan pengembalian buku. Aplikasi ini dirancang untuk memudahkan admin dalam mengelola data serta memberikan kemudahan bagi user dalam melihat katalog buku yang tersedia.

## 🚀 Fitur Admin

Berikut adalah fitur-fitur yang dapat diakses oleh Admin:

* **Tambah Buku**: Admin dapat menambahkan data buku ke dalam sistem.
* **Mengedit buku**: Admin dapat mmengatur Judul, pengarang, penerbit, tahun terbit, stock, dan menghapus buku yang tersedia.
* **Cek peminjaman**: Admin  dapat melihat siapa saja yang meminjam buku dan mengembalikan buku beserta jam pinjam dan jam kembalinya.
* **Tanggal Pengembalian Otomatis (7 Days)**: Sistem secara otomatis menentukan tanggal pengembalian buku yaitu 7 hari setelah tanggal peminjaman.

## 🚀 Fitur User

Berikut adalah fitur yang dapat diakses oleh User:

* **Melihat Katalog Buku**: User dapat melihat daftar buku yang tersedia di perpustakaan.
* **Pinjam/Kembali:** User dapat memnjam buku dan  menge,balikan buku secara mandiri pada system

## 🛠️ Yang Digunakan

Teknologi dan tools yang digunakan dalam pembuatan program ini adalah:

* **Visual Studio:** dengan menggunakan file PHP pada visual studio saya dapat mengatur program yang berjalan di dalamnya
* **PHPmyadmin:** menggunakan PHPmyadmin untuk menjalankan data basenya

## DOKUMENTASI
https://docs.google.com/spreadsheets/d/1O3t6eyWgLCNHFf0_iNpOweVDH7jIczd7AS7qxdct1b8/edit?usp=sharing

## 📸 ER Diagram

ER Diagram digunakan untuk menggambarkan relasi antar tabel dalam database, seperti tabel buku, anggota, admin, dan peminjaman. Diagram ini membantu dalam memahami struktur database serta alur data dalam sistem perpustakaan.
<img width="1536" height="1024" alt="ChatGPT Image Jan 15, 2026, 01_03_09 PM" src="https://github.com/user-attachments/assets/857a64ab-dd6e-4e8c-952f-2ded13ea93e8" />


<img width="688" height="640" alt="Screenshot 2026-01-15 121307" src="https://github.com/user-attachments/assets/02cda2e9-22f7-4d85-bd0d-d05580014417" />

## PENJELASAN CODE
* **anggota**
 <img width="768" height="881" alt="image" src="https://github.com/user-attachments/assets/d2d8775c-229d-411e-951c-00f424218142" />
 
Fungsi:
Menampilkan daftar anggota perpustakaan.

Peran:
Manajemen data anggota (lihat data).

* **BUKU.CLASS**
  <img width="764" height="905" alt="image" src="https://github.com/user-attachments/assets/8a8c693d-28e9-4ccf-aa33-230ee392ef0c" />
  
  Fungsi:
Class OOP untuk pengelolaan data buku.

Peran:
Berisi method tambah, edit, hapus, dan ambil data buku.

* **BUKU**
  <img width="806" height="899" alt="image" src="https://github.com/user-attachments/assets/b14699d8-154f-47f9-b49b-0e59d2dd2159" />
  
Fungsi:
Menampilkan daftar buku.
Peran:
Manajemen data buku (lihat, edit, hapus).

* **DASHBOARD**
  <img width="537" height="494" alt="image" src="https://github.com/user-attachments/assets/35d8b859-9adc-47f0-8f9b-53b2b7792d57" />
  
  Fungsi:
Halaman utama setelah login.

Peran:
Menampilkan ringkasan data dan menu navigasi sistem.

* **EDIT_BUKU**
  <img width="878" height="859" alt="image" src="https://github.com/user-attachments/assets/f2e5905c-57fc-431d-ac76-2c721bc2d2a1" />
  
Fungsi:
Mengubah data buku.

Peran:
Form edit dan update data buku berdasarkan ID.

* **HAPUS_BUKU**
  <img width="403" height="324" alt="image" src="https://github.com/user-attachments/assets/b99b01db-4e9d-41f8-b237-a52cd3e069a8" />
  
Fungsi:
Menghapus data buku.

Peran:
Menghapus buku dari database berdasarkan ID.

* **INDEX**
  <img width="377" height="230" alt="image" src="https://github.com/user-attachments/assets/b7899b29-128d-4cbd-8924-c772fb8d1762" />
  
Fungsi:
Halaman awal aplikasi.

Peran:
Mengalihkan user ke halaman login atau dashboard.

* **KEMBALI**
 <img width="577" height="305" alt="image" src="https://github.com/user-attachments/assets/d8a99cf8-4d53-4488-9fe3-cd5f6cd51185" />
 
Fungsi:
Memproses pengembalian buku.

Peran:
Mengubah status peminjaman dan menambah stok buku.

* **KONEKSI**
  <img width="853" height="451" alt="image" src="https://github.com/user-attachments/assets/78044cb8-9c66-4e12-bfd0-b79ab48a3a35" />
  
Fungsi:
Menghubungkan aplikasi PHP dengan database MySQL.

Peran:
Dipanggil oleh file lain agar bisa menjalankan query database.

* **LOGIN**
  <img width="926" height="840" alt="image" src="https://github.com/user-attachments/assets/4f865983-3aa7-4bbd-a8d1-fdf5b623afe0" />
  
Fungsi:
Menangani proses login user/admin.

Peran:
Memverifikasi username dan password, lalu membuat session.

* **LOGOUT**
  <img width="349" height="138" alt="image" src="https://github.com/user-attachments/assets/1edd7d3e-e3d9-49c3-8d3b-d82cd665631c" />
  
Fungsi:
Mengakhiri session login.

Peran:
Mengeluarkan user dari sistem dengan aman.

* **PEMINJAMAN_CLASS**
  <img width="1124" height="883" alt="image" src="https://github.com/user-attachments/assets/89c0b95a-d8f3-401d-867a-e25319994913" />
  
Fungsi:
Class OOP untuk peminjaman buku.

Peran:
Mengelola logika peminjaman dan pengembalian.

* **PEMINJAMAN**
  <img width="842" height="861" alt="image" src="https://github.com/user-attachments/assets/4bef0799-2d0b-4a36-b790-1a610f8f0cbc" />
  
Fungsi:
Menampilkan daftar peminjaman buku.

Peran:
Melihat transaksi peminjaman yang sedang berlangsung.

* **PINJAM**
  <img width="574" height="383" alt="image" src="https://github.com/user-attachments/assets/9805c1d6-e72d-4a36-9d95-e912dfb81147" />
  
Fungsi:
Memproses peminjaman buku.

Peran:
Mencatat peminjaman dan mengurangi stok buku.

* **SESSION**
  <img width="584" height="379" alt="image" src="https://github.com/user-attachments/assets/55587959-abb0-435a-9794-bb9e83584fee" />
  
Fungsi:
Mengelola dan mengecek session login.

Peran:
Melindungi halaman agar hanya bisa diakses oleh user yang sudah login.

* **TAMBAH_ANGGOTA**
  <img width="830" height="856" alt="image" src="https://github.com/user-attachments/assets/b1e1b486-d60a-4002-be82-58c953d3a936" />
  
Fungsi:
Menambahkan data anggota baru.

Peran:
Form input dan proses penyimpanan anggota ke database.

* **TAMBAH_BUKU**
  <img width="1263" height="892" alt="image" src="https://github.com/user-attachments/assets/af4fd78f-c72a-4ffb-b8aa-b95a6d91f22f" />
  
Fungsi:
Menambahkan buku baru ke sistem.

Peran:
Form input data buku dan penyimpanan ke database.

* **USER_LIST**
  <img width="914" height="914" alt="image" src="https://github.com/user-attachments/assets/5d4d5be8-422c-4b53-a652-56839397168f" />
  
Fungsi:
Menampilkan daftar user/admin.

Peran:
Manajemen akun pengguna sistem.

* **USER_CLASS**
  <img width="876" height="803" alt="image" src="https://github.com/user-attachments/assets/67a9c12d-a5e3-45f6-84e5-43046f63653f" />
  
Fungsi:
Class OOP untuk user/admin.

Peran:
Mengelola login dan data user.






