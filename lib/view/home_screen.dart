import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_of_solidsoftware/configure/constants.dart';
import 'package:test_of_solidsoftware/configure/styles.dart';

/// Home Screen Class
class HomeScreen extends StatefulWidget {
  /// Calling the constructor of Home Screen
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _color = Color.fromARGB(
    Constants.rgb,
    Random().nextInt(
      Constants.rgb,
    ),
    Random().nextInt(
      Constants.rgb,
    ),
    Random().nextInt(
      Constants.rgb,
    ),
  );

  void _changeColor() {
    setState(() {
      _color = Color.fromARGB(
        Constants.rgb,
        Random().nextInt(
          Constants.rgb,
        ),
        Random().nextInt(
          Constants.rgb,
        ),
        Random().nextInt(
          Constants.rgb,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () async {
          _changeColor();
        },
        child: ColoredBox(
          color: _color,
          child: SafeArea(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'The Color of This screen is -\n',
                            style: Styles.textStyle2,
                          ),
                          TextSpan(
                            text: '$_color',
                            style: Styles.textStyle1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'Hey there',
                    style: Styles.textStyle1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
