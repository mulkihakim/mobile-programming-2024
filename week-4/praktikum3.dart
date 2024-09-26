void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts.addAll({
    'name': 'Mulki',
    'NIM': '2241720131'
  });
  nobleGases[19] = 'Hakim';
  nobleGases[20] = '2241720131';

  mhs1['name'] = 'Mulki';
  mhs1['NIM'] = '2241720131';
  mhs2.addAll({
    1: 'Hakim',
    2: '2241720131'
  });

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);

}