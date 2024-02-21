import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 1,
      duration: Duration(seconds: 1),
    )..repeat();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 100),
          duration: Duration(milliseconds: 500),
          builder: (BuildContext context, Object? value, Widget? child) {
            return RotationTransition(
              turns: _controller,
              child: FlutterLogo(size: 200),
            );
          },
        ),
      ),
    );
  }
}
