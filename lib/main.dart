import 'package:flutter/material.dart';
import 'package:test_of_solidsoftware/view/home_screen.dart';

void main() {
  runApp(const Main());
}

/// Base of all things.
class Main extends StatelessWidget {
  /// Calling the constructor.
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
