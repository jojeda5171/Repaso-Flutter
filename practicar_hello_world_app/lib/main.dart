import 'package:flutter/material.dart';
import 'package:practicar_hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.black),
        home: const CounterScreen());
  }
}
