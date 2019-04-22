import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlareButtonApp());

class FlareButtonApp extends StatefulWidget {
  @override
  _FlareButtonAppState createState() => _FlareButtonAppState();
}

class _FlareButtonAppState extends State<FlareButtonApp> {
  String _animationName = 'Idle';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(48.0),
          child: GestureDetector(
            onTap: _onButtonTap,
            child: FlareActor(
              "assets/Button.flr",
              animation: _animationName,
              fit: BoxFit.contain,
              shouldClip: false,
            ),
          ),
        ),
      ),
    );
  }

  void _onButtonTap() {
    setState(() {
      if (_animationName == 'Idle' || _animationName == 'Restart') {
        _animationName = 'Loading';
      } else {
        _animationName = 'Restart';
      }
    });
  }
}
