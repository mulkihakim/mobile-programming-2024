# <center> Laporan Pertemuan 6
## <center> Layout dan Navigasi
## <center>NIM: 2241720131
## <center>Nama: Mulki Hakim
## <center>Kelas: TI 3-B

# Praktikum 1: Membangun Layout di Flutter
1. Buat project baru
    ![alt text](pict/image.png)

2. Ganti kode pada file lib/main.dart
    ![alt text](pict/image1.png)

3. Identifikasi layout diagram
4. Implementasi title row
    ![alt text](pict/image2.png)

## hasil implementasi kode dari praktikum 1
![alt text](pict/image6.png)

# Praktikum 2: Implementasi button row
1. Buat method Column _buildButtonColumn
    ![alt text](pict/image3.png)

2. Buat widget buttonSection
    ![alt text](pict/image4.png)

3. Tambah button section ke body
    ![alt text](pict/image5.png)

## hasil implementasi kode dari praktikum 2
![alt text](pict/image7.png)
# Praktikum 3: Implementasi text section
1. Buat widget textSection
    ![alt text](pict/image8.png)

2. Tambahkan variabel text section ke body
    ![alt text](pict/image9.png)

## hasil implementasi kode dari praktikum 3
![alt text](pict/image10.png)

# Praktikum 4: Implementasi image section
1. Siapkan aset gambar
    ![alt text](pict/image11.png)
2. Tambahkan gambar ke body
    ![alt text](pict/image12.png)
3. Terakhir, ubah menjadi ListView
    ![alt text](pict/image13.png)

## hasil implementasi kode dari praktikum 4
![alt text](pict/image14.png)
    catatan tambahan: saat bagian body menggunakan widget `scroll` jika di zoom maka terdapat warning jika gambar yang ditampilkan mengalami overflow dan tampilan gambar tidak akan menyesuaikan dengan bagian dalam body yang lain, sehingga tidak dapat discrool ke bagian lain text, button, dll yang ada di dalam body. namun jika menggunakan widget `ListView` maka jika di zoom dan gambar menjadi overflow, gambar tersebut akan mengikuti bagian lain text, button, dll yang ada di dalam body sehingga dapat discrool untuk melihat bagian-bagian tersebut.

# Praktikum 5: Membangun Navigasi di Flutter
1. Siapkan project baru
2. Mendefinisikan Route
3. Lengkapi Kode di main.dart
4. Membuat data model
5. Lengkapi kode di class HomePage