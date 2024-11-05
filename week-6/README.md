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

    ![alt text](pict/image15.png)

2. Mendefinisikan Route

    ![alt text](pict/image16.png)

3. Lengkapi Kode di main.dart

    ![alt text](pict/image17.png)

4. Membuat data model

    ![alt text](pict/image18.png)

5. Lengkapi kode di class HomePage

    ![alt text](pict/image19.png)

6. Membuat ListView dan itemBuilder

    ![alt text](pict/image20.png)

    Output:

    ![alt text](pict/image21.png)

7. Menambahkan aksi pada ListView

    saat item sebelumnya ditekan akan menampilkan tampilan di bawah karena belum diatur tampilannya.
    ![alt text](pict/image22.png)

# Tugas Praktikum 2
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
    ```dart
    Navigator.pushNamed(context, '/item', arguments: item);
    ```
2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
    ```dart
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    ```
    jawab:

    hasil implementasi dari no 1 dan nomor 2 membuat list item yang telah ada sebelumnya, jika ditekan maka akan menuju halaman ItemPage dimana menampilkan detail dari item yang dipilih/ditekan sebagai argumen item nya. berikut kode dan ouput setelah list item sugar ditekan.
    
    ![alt text](pict/image23.png)
3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

    jawab: 
    - menambahkan atribut pada file item.dart(models)
        ```dart
        class Item {
            String name;
            String imagePath;
            int stock;
            double rate;
            int price;
            
            Item({
                required this.name, 
                required this.imagePath,
                required this.stock,
                required this.rate,
                required this.price
            });
        }
        ```
    - menambahkan foto, stok, rating pada list item
        ```dart
        class HomePage extends StatelessWidget {
            final List<Item> items = [
                Item(
                name: 'Sugar', 
                imagePath: 'images/gula.jpeg',
                stock: 4,
                rate: 4.6,
                price: 5000),
                Item(
                name: 'Salt', 
                imagePath: 'images/garam.jpeg',
                stock: 5,
                rate: 4.3,
                price: 2000)
            ];
        ```
    - mengubah tampilan menjadi GridView

        ![alt text](pict/image24.png)

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

    jawab: 
    - menambahkan hero widget pada item list di homePage

        ![alt text](pict/image25.png)

    - menambahkan hero widget pada ItemPage

        ![alt text](pict/image26.png)

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

    hasil:

    ![alt text](pict/tugasno4dan5.gif)

6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

    jawab:
    - instal `go_router` package

        ![alt text](pict/image27.png)

    - konfigurasi `go_router` di main.dart

        ![alt text](pict/image28.png) 

    - penyesuaian implementasi `go_router` pada homePage

        ![alt text](pict/image29.png)

    - penyesuaian implementasi `go_router` pada ItemPage

        ![alt text](pict/image30.png)