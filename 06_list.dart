main() {
  //固定長リストの作成
  final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]

  fixedLengthList[0] = 87;
  fixedLengthList.setAll(1, [1, 2, 3]);
  print(fixedLengthList); // [87, 1, 2, 3, 0]

  //リストの長さを変更できる操作を使用しようとすると、エラーが発生
  //fixedLengthList.length = 0;  // Uncaught Error: Unsupported operation: set length
  //fixedLengthList.add(499);    // Uncaught Error: Unsupported operation: add
  
  
  //可変長リストの作成
  final growableList = <String>['A', 'B']; // Creates growable list.
  growableList[0] = 'G';
  print(growableList); // [G, B]
  growableList.add('X');
  growableList.addAll({'C', 'B'});
  print(growableList); // [G, B, X, C, B]

  //要素がリストにあるか、その場所を特定
  final indexA = growableList.indexOf('A'); // -1 (not in the list)
  final firstIndexB = growableList.indexOf('B'); // 1
  final lastIndexB = growableList.lastIndexOf('B'); // 4

  //要素を削除
  growableList.remove('C');
  growableList.removeLast();
  print(growableList); // [G, B, X]
  
  //リストに要素を挿入する
  growableList.insert(1, 'New');
  print(growableList); // [G, New, B, X]
  
  //要素の置き換え
  growableList.replaceRange(0, 2, ['AB', 'A']);
  print(growableList); // [AB, A, B, X]
  growableList.fillRange(2, 4, 'F');
  print(growableList); // [AB, A, F, F]

  //要素のソート
  growableList.sort((a, b) => a.compareTo(b));
  print(growableList); // [A, AB, F, F]
  
  //要素のシャッフル
  growableList.shuffle();
  print(growableList); // e.g. [AB, F, A, F]
  
  
  //スプレッド演算子を使用してリストを追加
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list2);

  //...?を使用してnullの場合は使用しないようにできる
  List<int>? list3;
  var list4 = [0, ...?list3];
  print(list4);
  
  //コレクションif
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  promoActive = false;
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  
  //コレクションfor
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings);
}
