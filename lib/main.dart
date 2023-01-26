import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
