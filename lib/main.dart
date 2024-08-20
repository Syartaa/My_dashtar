import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
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
  int appBar = 0;
  int scaffold = 0;
  Random random = new Random();
  List sounds = ['Kick.wav', 'Ride.wav', 'Snare.wav', 'Tom.wav'];
  int soundPositions = 0;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: colours[appBar],
            centerTitle: true,
            title: IconButton(
                onPressed: () {
                  soundPositions = random.nextInt(4);
                },
                icon: Icon(Icons.refresh, color: Colors.black)),
            // title: Text("$count"),
          ),
          backgroundColor: colours[scaffold],
          body: MaterialButton(
              onPressed: () {
                setState(() {
                  // temp = brown;
                  // brown = black;
                  // black = temp;
                  player.play(AssetSource(sounds[soundPositions]));
                  appBar = random.nextInt(6);
                  scaffold = random.nextInt(6);
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
