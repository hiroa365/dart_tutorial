main() {
  //finalは、ビルドの段階で値が特定している必要はないが、代入した後変更することが出来ない
  final color;
  color = 'red';   //final変数に値を代入しようとしてエラー
//   color = 'blue';   //final変数に値を代入しようとしてエラー
  var radius = 2;
  radius = 1;   //final変数ではないので代入可能

  //constは、ビルド時に値が保証されている
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  const validConstString = '$aConstNum $aConstBool $aConstString';

  //定数リスト
  var foo = const [];
  final bar = const [];
  const baz = []; // Equivalent to `const []`

  //非constの値を代入できます
  foo = [1, 2, 3];
}
