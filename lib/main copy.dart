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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<String> item = List<String>.generate(50, (i) => 'Item ${i + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 6'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.deepPurple[100 + (index % 8) * 100],
            child: Center(child: Text('Tile $index')),
          );
        },
      ),
    );
  }
}
