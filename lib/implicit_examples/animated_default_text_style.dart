import 'package:flutter/material.dart';

/// Flutter code sample for [DefaultTextStyle].

class DefaultTextStyleExample extends StatefulWidget {
  const DefaultTextStyleExample({super.key});

  @override
  State<DefaultTextStyleExample> createState() =>
      _DefaultTextStyleExampleState();
}

class _DefaultTextStyleExampleState extends State<DefaultTextStyleExample> {
  bool isAnimate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DefaultTextStyle.merge Sample')),
      // Inherit MaterialApp text theme and override font size and font weight.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 1500),
            style: TextStyle(
              color: Colors.amber,
              fontSize: isAnimate ? 50 : 24,
              fontWeight: FontWeight.bold,
            ),
            child: const Center(
              child: Text('Flutter'),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  isAnimate = !isAnimate;
                });
              },
              child: Text('animate'))
        ],
      ),
    );
  }
}
