void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);
  final list = List<dynamic>.filled(5, null);  // Membuat list dengan panjang 5, semua elemennya bernilai null.
  
  list[1] = 'Mulki Hakim';  // Mengisi elemen pada index ke-1 dengan Nama.
  list[2] = '2241720131';  // Mengisi elemen pada index ke-2 dengan NIM.

  print(list);  // Mencetak seluruh isi list.
}