//関数はFunction型
//引数を渡すことが出来る
//戻り値を貰うことが出来る

main() {

  printParameter(1, 2);
  int total = addNumbers(1, 2);
  print("total=$total");

}

void printParameter(int i, int j) {
  print("input parameters: i=$i, j=$j");
}

int addNumbers(int i, int j) {
  return i + j;
}

//引数の型を省略しても関数は機能するが、推奨されていない
bool isEqual(i, j) {
  return i == j;
}

//式を１つだけ含む関数は簡略化（アロー）できる
int subNumbers(int i, int j) => i - j;

//簡略化した式にif文を入れることはできない
//bool isEqual2(i, j) => if (i == j) { return true; } else { return false; }
bool isEqual2(i, j) => (i == j) ? true : false;
//次のような条件式は記述できる。オペレーターは記述できるということか？
String visibility(bool isPublic) => isPublic ? 'public' : 'private';
String playerName(String? name) => name ?? 'Guest';

//Kotlinのような書き方は出来ない。おそらくdartでは制御文は値を返さない。
// bool isEqual2(i, j) {
//   return if (i == j) { true; } else { false; }
// }
