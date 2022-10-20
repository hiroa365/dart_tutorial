main() {
  //オプション位置パラメータを省略した関数コール
  print(say('Bob', 'Howdy'));

  //オプション位置パラメータを省略しない関数コール
  print(say('Bob', 'Howdy', 'smoke signal'));
}

//引数を[]でラップすると、オプション位置パラメータになります
//オプション位置パラメータは、関数コールの際に省略可能です。
//省略されたパラメータはnullになります。
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
