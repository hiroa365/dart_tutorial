main() {

  //引数を設定せずに呼び出すことが可能になる
  enableFlags();
  enableFlags(bold: true);
  enableFlags(hidden: true);

  //オプション位置パラメータを省略してもデフォルト値は使用されます。
  say('Bob', 'Howdy');
  
  doStuff();
}


//名前付き引数にdefault parametersを設定
void enableFlags({bool bold = false, bool hidden = false}) {
  print("bold=$bold, hidden=$hidden");
}

//オプション位置パラメータのデフォルト値も設定できます
String say(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

//リストやマップにデフォルト値を設定することも出来ます。
void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

//通常引数にデフォルト値を設定することはできません
// int add(int i = 0, int j = 0) => i + j;  //Error: Non-optional parameters can't have a default value.
