main() {
  //名前を付けて引数を設定する
  enableFlags(bold: true, hidden: true);
  //引数の順番が逆になっても問題ない
  enableFlags(hidden: true, bold: true);
  //引数を省略した場合はnullになる  
  enableFlags(hidden: true);

  //名前付き引数は名前を未指定で設定することが出来ない
  //enableFlags(true, true);
}

//名前付き引数を設定
void enableFlags({bool? bold, bool? hidden}) {
  print("bold=$bold, hidden=$hidden");
}

//名前付き引数はnon-nullにするとエラーになる
// void enableFlags2({bool bold, bool hidden}) {
//   print("bold=$bold, hidden=$hidden");
// }

//必須パラメータにはrequiredを付ける
//requiredを付けると、non-nullに出来る
void enableFlags3({required bool bold, bool? hidden}) {
  print("bold=$bold, hidden=$hidden");
}
