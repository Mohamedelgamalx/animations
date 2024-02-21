import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _HomeState();
}

class _HomeState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Second Screen', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              top: 0,left: 0,
              duration: Duration(seconds: 1),
              child: Hero(
                tag: 'flutter',
                child: FlutterLogo(size: 200),
              ),
            ),
          ]
        ),
      )
    );
  }
}
