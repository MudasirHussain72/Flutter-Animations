import 'package:flutter/material.dart';

class CrossFadeAnimationDemo extends StatefulWidget {
  @override
  _CrossFadeAnimationDemoState createState() => _CrossFadeAnimationDemoState();
}

class _CrossFadeAnimationDemoState extends State<CrossFadeAnimationDemo> {
  bool _firstChild = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CrossFade Animation'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              height: 60,
              color: Colors.orange.shade200,
            ),
            AnimatedCrossFade(
              firstCurve: Curves.easeInCubic,
              secondCurve: Curves.easeInCirc,
              firstChild: InkWell(
                onTap: () {
                  setState(() {
                    _firstChild = !_firstChild;
                  });
                },
                child: Container(
                  child: ClipOval(
                    child: CircleAvatar(
                      maxRadius: 100,
                      child: Image.network(
                        'https://media.istockphoto.com/id/1419410282/photo/silent-forest-in-spring-with-beautiful-bright-sun-rays.jpg?s=1024x1024&w=is&k=20&c=K8yBJVB-TtpPF1O2zOhVlzXECDxJsadlRrLf4gXXNkk=',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              secondChild: InkWell(
                onTap: () {
                  setState(() {
                    _firstChild = !_firstChild;
                  });
                },
                child: Container(
                  height: 250,
                  width: 250,
                  child: Image.network(
                    'https://media.istockphoto.com/id/1458215547/photo/brown-bear.jpg?s=1024x1024&w=is&k=20&c=R2zXwSRYnLX2kZt7qBUBW1eLhWL3gamnkN6HE_S2Awk=',
                    fit: BoxFit.cover,
                  ),
                  color: Colors.amberAccent.shade700,
                ),
              ),
              crossFadeState: _firstChild
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
              layoutBuilder: (
                Widget topChild,
                Key topChildKey,
                Widget bottomChild,
                Key bottomChildKey,
              ) {
                return Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    PositionedDirectional(
                      child: bottomChild,
                      key: bottomChildKey,
                      top: 0,
                    ),
                    PositionedDirectional(
                      child: topChild,
                      key: topChildKey,
                    ),
                  ],
                );
              },
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              height: 60,
              color: Colors.red.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
