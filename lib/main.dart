import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter=0;
  // 5. カウンタが押された時のメソッド
  void _incrementCounter() {
    setState(() {
      _counter++;
      print("HelloWorld");
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const[
          Icon(Icons.create),
          Text("初めてのタイトル"),
        ]),
      ),
      body: Column(children: [//children=配列
        const  Text("Helloworld"),
        const  Text("ハローワールド"),
        TextButton(
          onPressed: () => {print("ボタンが押されたよ")},
          child: const Text("テキストボタン"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const[
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size:50.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size:50.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size:50.0,
            ),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("押したね？")},
        child: const Icon(Icons.timer)),
        drawer: const Drawer(child: Center(child: Text("Drawer"))),
        endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
  }
}
