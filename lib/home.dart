import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double opacityNum = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        opacityNum = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityNum,
          curve: Curves.linear,
          duration: const Duration(seconds: 4),
          child: const FlutterLogo(size: 200),
        ),
      ),
    );
  }
}
