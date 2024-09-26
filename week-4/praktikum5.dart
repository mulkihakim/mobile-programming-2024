void main() {
  // var record = ('first', a: 2, b: true, 'last');
  var record = (2, 1);
  print(record);
  print(tukar(record));
  var record1 = (a: 2, b: 1);
  print("with key\n$record1");
  print(tukarWithKey(record1)); // Menggunakan tukar untuk record berlabel
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Mulki Hakim', 2241720131);
  print(mahasiswa);
  var mahasiswa2 = ('Mulki Hakim', a: 2241720131, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
({int a, int b}) tukarWithKey(({int a, int b}) record) {
  return (a: record.b, b: record.a); // Tukar nilai a dan b
}