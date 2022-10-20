main() {
  //Setは、一意のアイテムの順序付けられていないコレクション

  //Setの生成
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  print("");

  //空のSet
  var names = <String>{};

  //Setにアイテムを追加
  //fluorineを2回入れているが重複しない
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements);
 
  //Setの数を取得
  print(elements.length);

  //定数Setの定義
  final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
  };
  //constantSet.add('helium'); // Unsupported operation: Cannot change an unmodifiable set

  //スプレッド演算子
  var setValues = {1, 2, 3};
  var setValues2 = {0, ...setValues};

   //...?を使用してnullの場合は使用しないようにできる
  List<int>? setValues3;
  var setValues4 = {0, ...?setValues3};
  print(setValues4);
  
  //コレクションif
  var promoActive = true;
  var nav = {'Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'};
  print(nav);

  promoActive = false;
  nav = {'Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'};
  print(nav);
  
  //コレクションfor
  var listOfInts = {1, 2, 3};
  var listOfStrings = {'#0', for (var i in listOfInts) '#$i'};
  print(listOfStrings);
}
