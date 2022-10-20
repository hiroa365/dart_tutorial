void main() {

  //Number:int
  int x = 1;
  var y = 2;  //初期値によってint型に型推論される


  //Number:double
  var hex = 0xDEADBEEF;
  var hex2 = 1.1;  //数値に小数点が含まれる場合はdoubleと判断される
  var hex3 = 1.42e5;
  double hex4 = 1; //型指定している場合は、自動的にdoubleに変換される

  //numを使用すると、int、doubleの両方を代入することが出来る
  num z = 1; // x can have both int and double values
  z += 2.5;

  //型変換
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}
