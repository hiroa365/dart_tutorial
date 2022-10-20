main(){
  //Mapは、Key-Value型のオブジェクト
  //Keyはユニークで、valueは重複可能
  
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  //Mapコンストラクターを使用して生成
  var gifts2 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //新しいkey-valueの追加
  gifts['fourth'] = 'calling birds'; // Add a key-value 

  //値の取得
  print(gifts['first']);
  //存在しないkeyはnullになる
  print(gifts['fifth']);
  //key-valuペアの数
  print(gifts.length);

  //定数mapを作成
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap[2] = 'Helium'; // This line will cause an error.

}
