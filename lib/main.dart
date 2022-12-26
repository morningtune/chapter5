import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // Widget redBox = const DecoratedBox(
  //   decoration: BoxDecoration(color: Colors.red),
  // );

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,   // 水平方向左对齐
          children: <Widget>[
             Column(
               //显式指定对齐方式为左对齐，排除对齐干扰
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
               children:  <Widget>[
                 Container(
                   margin: EdgeInsets.only(top: 30.0, left: 150.0),
                   constraints: BoxConstraints.tightFor(width: 300.0, height: 250.0),//卡片大小
                   decoration: BoxDecoration(  //背景装饰
                     gradient: RadialGradient( //背景径向渐变
                       colors: [Colors.red, Colors.orange],
                       center: Alignment.topLeft,
                       radius: .98,
                     ),
                     boxShadow: [
                       //卡片阴影
                       BoxShadow(
                         color: Colors.black54,
                         offset: Offset(2.0, 2.0),
                         blurRadius: 4.0,
                       )
                     ],
                   ),
                   transform: Matrix4.rotationZ(.2),//卡片倾斜变换
                   alignment: Alignment.center, //卡片内文字居中
                   child: Text(
                     //卡片文字
                     "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
                   ),
                 ),
                Container(
                   //容器外填充
                   margin: EdgeInsets.all(20),
                 ),
                 Container(
                  color: Colors.black,
                   child: Transform(
                    alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                     transform: Matrix4.skewY(0.5), //沿Y轴倾斜0.3弧度
                     child: Container(
                       padding: const EdgeInsets.all(8.0),
                       color: Colors.deepOrange,
                       child: const Text('Apartment for rent!'),
                     ),
                   ),
                 )
               ],
             ),
          ],
        ));
  }
}