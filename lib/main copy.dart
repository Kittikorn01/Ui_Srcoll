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
      body: GridView.count(
        padding: EdgeInsets.all(10.0),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        children: List<Widget>.generate(60, (index) {
          // สร้างไอเท็มตัวอย่าง 20 อัน
          return Container(
            color: Colors.teal[100 + (index % 8) * 100],
            child: Center(child: Text('Item $index')),
          );
        }),
      ),
    );
  }
}
