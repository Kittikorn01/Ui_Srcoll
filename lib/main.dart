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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 6'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        alignment:
            Alignment.topRight, // จัดกึ่งกลาง children ที่ไม่ได้กำหนดตำแหน่ง
        children: <Widget>[
          // รูปภาพพื้นหลัง
          Image.network(
            'https://picsum.photos/id/1015/300/300',
            fit: BoxFit.cover,
          ),

          // Text ที่กำหนดตำแหน่งไว้มุมบนซ้าย
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(
                255,
                112,
                121,
                213,
              ).withOpacity(0.5), // พื้นหลังกึ่งโปร่งใส
              child: const Text(
                'Top Left',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Text ที่กำหนดตำแหน่งไว้มุมบนขวา
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(
                255,
                210,
                80,
                80,
              ).withOpacity(0.5), // พื้นหลังกึ่งโปร่งใส
              child: const Text(
                'Top Right',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Text ที่กำหนดตำแหน่งไว้มุมล่างซ้าย
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(
                255,
                103,
                215,
                23,
              ).withOpacity(0.5), // พื้นหลังกึ่งโปร่งใส
              child: const Text(
                'bottom Left',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Icon ที่กำหนดตำแหน่งไว้มุมล่างขวา
          Positioned(
            bottom: 120.0,
            right: 120.0,
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle, // ทำให้เป็นป้ายวงกลม
              ),
              child: const Icon(
                Icons.baby_changing_station_sharp,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
