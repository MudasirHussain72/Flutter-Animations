import 'package:flutter/material.dart';

class AnimatedScaleExample extends StatefulWidget {
  const AnimatedScaleExample({super.key});

  @override
  State<AnimatedScaleExample> createState() => AnimatedScaleExampleState();
}

class AnimatedScaleExampleState extends State<AnimatedScaleExample> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedScale(
                scale: scale,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() => scale = scale == 1.0 ? 3.0 : 1.0);
              },
              child: const Text('Scale Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
