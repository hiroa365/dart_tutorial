void main() {

  //一重引用符または二重引用符を使用して文字列を作成
  var s1 = 'Single';
  var s2 = "Double";
  var s3 = 'It\'s easy';
  var s4 = "It's even";

  //隣接する文字列や　＋オペレーターで文字列を連結出来ます
  var t1 = 'String '
      'concatenation'
      " works even over line breaks.";
  var t2 = 'The + operator ' + 'works, as well.';
  print(t1);
  print(t2);
  print("");
  
  //`${expression}.`で文字列内に値を置き換えることが可能
  var s = 'string interpolation';
  print('Dart has $s, which is very handy.');
  print('That deserves all caps. '
        '${s.toUpperCase()} is very handy!');
  print("");

  //文字列保管は計算式を入れることも可能
	int l = 20;
	int b = 10;
	print("The sum of $l and $b is ${l + b}");
  print("");

  //複数行の文字列
  var u1 = '''
  You can create
  multi-line strings like this one.
  ''';
  var u2 = """This is also a 
  multi-line string.""";
  print(u1);
  print(u2);
  print("");

}
