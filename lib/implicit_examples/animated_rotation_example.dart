import 'package:flutter/material.dart';

class AnimatedRotateExample extends StatefulWidget {
  const AnimatedRotateExample({super.key});

  @override
  State<AnimatedRotateExample> createState() => AnimatedRotateExampleState();
}

class AnimatedRotateExampleState extends State<AnimatedRotateExample> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(size: 100),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() => turns += 1.0 / 8.0);
              },
              child: const Text('Rotate Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
