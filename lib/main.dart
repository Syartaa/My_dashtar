import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int count = 0;
  // Color brown = Colors.brown;
  // Color black = Colors.black;
  // Color temp = Colors.white;
  List<Color> colours = [
    Colors.yellow,
    Colors.red,
    const Color.fromARGB(255, 192, 17, 163),
    const Color.fromARGB(255, 27, 24, 194),
    const Color.fromARGB(255, 6, 175, 49),
    const Color.fromARGB(255, 175, 7, 21),
    Colors.yellow,
  ];
  int appBar = 0;s
  int scaffold = 0;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: colours[appBar],
            centerTitle: true,
            // title: Text("$count"),
          ),
          backgroundColor: colours[scaffold],
          body: MaterialButton(
              onPressed: () {
                setState(() {
                  // temp = brown;
                  // brown = black;
                  // black = temp;
                  appBar = random.nextInt(6);
                });
              },
              child: Center(child: Image.asset('images/dash.png'))),
        ));
  }
}

// Container(
//   height: 100.0,
//   width: 100.0,
//   color: const Color.fromARGB(255, 72, 212, 16),
//   child: Image.asset('images/dash.png'),
// ),
// Container(
//   height: 100.0,
//   width: 100.0,
//   color: const Color.fromARGB(255, 233, 28, 13),
//   child: Image.asset('images/dash.png'),
// ),
// Container(
//   height: 100.0,
//   width: 100.0,
//   color: const Color.fromARGB(255, 31, 11, 102),
//   child: Image.asset('images/dash.png'),
// ),
// Container(
//   height: 100.0,
//   width: 100.0,
//   color: const Color.fromARGB(255, 72, 212, 16),
//   child: Image.asset('images/dash.png'),
// ),
// Container(
//   height: 100.0,
//   width: 100.0,
//   color: const Color.fromARGB(255, 233, 28, 13),
//   child: Image.asset('images/dash.png'),
// ),
// Container(
//   height: 100.0,
//   width: 100.0,
//   color: const Color.fromARGB(255, 31, 11, 102),
//   child: Image.asset('images/dash.png'),
// )

// Stack(
//           children: [
//             Container(
//               height: 100.0,
//               width: 100.0,
//               color: Colors.yellow,
//             ),
//             Positioned(
//               left: 10.0,
//               top: 20.0,
//               child: Container(
//                 height: 50.0,
//                 width: 50.0,
//                 color: const Color.fromARGB(255, 233, 28, 13),
//               ),
//             ),
//           ],
//         ))
