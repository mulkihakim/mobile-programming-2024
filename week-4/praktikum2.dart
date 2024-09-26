void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  names1.add('Mulki');
  names1.add('2241720131');
  Set<String> names2 = {}; // This works, too.
  names2.addAll(['Hakim', '2241720131']);
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}