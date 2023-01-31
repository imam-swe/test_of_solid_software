import 'dart:math';

import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Color _color = Colors.blue;

  void _changeColor() {
    setState(() {
      _color = Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          color: _color,
          child: const Center(
            child: Text('Hey there'),
          ),
        ),
      ),
    );
  }
}
