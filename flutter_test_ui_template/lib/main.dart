// import 'package:syncfusion_flutter_charts/charts.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent.shade400),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(children: const [
         Icon(
          Icons.data_exploration,
          color: Colors.black54,),
         Text(
          "初めてのタイトル",
           style: TextStyle(
            color: Colors.black54
           ),
          ),
       ]),
      ),

        body: Column(children: [
          const Text('Hellow Wold!'),
          const Text('Whats up Jhon Doe'),
          TextButton(
              onPressed: () => {print('Pressed')}, child: const Text('押すなよ')),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                // https://api.flutter.dev/flutter/material/Icons-class.html
                Icon(
                  // Iconの指定
                  Icons.favorite,
                  // 色の指定
                  color: Colors.pink,
                  // サイズの指定
                  size: 24.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ]),
        ]),
        drawer: const Drawer(child: Center(child: Text("Drawer"))),
        endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
  }
}


// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   // Widgetにツリー構造で定義していく
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Row(
//             children: const [
//               Icon(
//                 Icons.data_exploration,
//                 color: Colors.black54,
//                 size: 24
//               ),
//               Text('Counter')
//             ]
//           ),
//         ),

//         body: Column(children: [
//           const Text('Hellow Wold!'),
//           const Text('Whats up Jhon Doe'),
//           TextButton(
//               onPressed: () => {print('Pressed')}, child: const Text('押すなよ')),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: const [
//                 // https://api.flutter.dev/flutter/material/Icons-class.html
//                 Icon(
//                   // Iconの指定
//                   Icons.favorite,
//                   // 色の指定
//                   color: Colors.pink,
//                   // サイズの指定
//                   size: 24.0,
//                 ),
//                 Icon(
//                   Icons.audiotrack,
//                   color: Colors.green,
//                   size: 30.0,
//                 ),
//                 Icon(
//                   Icons.beach_access,
//                   color: Colors.blue,
//                   size: 36.0,
//                 ),
//               ]),
//         ])

//     );
//   }
// }
