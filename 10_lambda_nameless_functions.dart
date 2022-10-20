main() {
  //無名のラムダ関数を変数に代入することが可能。

  //無名のラムダ関数をFunction型の変数に代入
  Function addNumbers = (int i, int j) {
    var sum = i + j;
    print(sum);
  };
  
  //無名のラムダ関数を型推論を使用して変数に代入
  var multiplyFour = (int i) {
    return i * 4;
  };

  //アローを使用した関数も変数に代入が出来る
  var addTwoNumbers = (int i, int j) => print(i + j);
  var multiplyByFour = (int i) => i * 4;

  addNumbers(2,5);
  print("${multiplyFour(5)}");
  addTwoNumbers(3, 7);
  print("${multiplyByFour(10)}");
}
