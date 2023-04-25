void main() {

  // ! var可以接收任何类型的变量，但是 Dart 中 var 变量一旦赋值，类型便会确定，则不能再改变其类型。
  var str = '字符';
  // str = 1111; // *  Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  str = '刘可';
  print(str);


  // ! Object 是 Dart 所有对象的根基类，也就是说在 Dart 中所有类型都是Object的子类(包括Function和Null)，所以任何类型的数据都可以赋值给Object声明的对象。 dynamic与Object声明的变量都可以赋值任意对象，且后期可以改变赋值的类型.
  // ! dynamic与Object不同的是dynamic声明的对象编译器会提供所有可能的组合，而Object声明的对象只能使用 Object 的属性与方法, 否则编译器会报错.
  Object obj = 1;
  obj = 'lk';
  // print(obj.length); // * 报错 The getter 'length' is not defined for the class 'Object'
  print(obj.toString().length);
  dynamic d = 1;
  d = 'lyq';
  print(d.length);


  // ! 如果您从未打算更改一个变量，那么使用 final 或 const，不是var，也不是一个类型。
  // ! final 变量只能被设置一次，两者区别在于：const 变量是一个编译时常量（编译时直接替换为常量值），final变量在第一次使用时被初始化。被final或者const修饰的变量，变量类型可以省略
  final fin = 'hi final';
  print(fin);
  const con = 'h1 const';
  print(con);


  int i = 1; // ! 默认为不可空，必须在定义时初始化。
  print(i * 8); 
  int? j; // ! 定义为可空类型，对于可空变量，我们在使用前必须判空。
  // print(j * 8); // * Error: Operator '*' cannot be called on 'int?' because it is potentially null.
  late int v; // ! 如果我们预期变量不能为空，但在定义时不能确定其初始值，则可以加上late关键字
  v = 2; // ! 表示会稍后初始化，但是在正式使用它之前必须得保证初始化过了，否则会报错
  print(v * 8);

  // ! 如果一个变量我们定义为可空类型，在某些情况下即使我们给它赋值过了，但是预处理器仍然有可能识别不出，这时我们就要显式（通过在变量后面加一个”!“符号）告诉预处理器它已经不是null了

}
