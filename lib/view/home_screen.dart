import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_of_solidsoftware/configure/constants.dart';
import 'package:test_of_solidsoftware/configure/styles.dart';
import 'package:vibration/vibration.dart';

/// Home Screen Class
class HomeScreen extends StatefulWidget {
  /// Calling the constructor of Home Screen
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Set initial color
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
          ///Color Change
          _changeColor();

          ///Vibration
          await Vibration.vibrate(duration: Constants.vibrateDuration);
        },
        child: ColoredBox(
          color: _color,
          child: SafeArea(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: Constants.kPadding),
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Screen Hex-Color Code is-\n',
                              style: Styles.textStyle2,
                            ),
                            TextSpan(
                              text: '$_color'
                                  .toString()
                                  .substring(Constants.i, Constants.j),
                              style: Styles.textStyle1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text('Hey There', style: Styles.textStyle3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
