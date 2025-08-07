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
    final List<String> entries = List<String>.generate(
      50,
      (i) => 'Item ${i + 1}',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 6'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: entries.length, // จำนวนรายการทั้งหมด
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(entries[index]),
            subtitle: Text('subtitle ${entries[index]}'),
            onTap: () {
              print('Tap in ${entries[index]}');
            },
          );
        },
      ),
    );
  }
}
