import 'package:animations_transitions/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _HomeState();
}

class _HomeState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 400,),
          Center(
              child: Hero(tag: 'flutter',
              child: FlutterLogo(size: 100)),
          ),
          TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
          }, child: const Text('Move to Second Screen', style: TextStyle(
            color: Color(0xff54c5f8),
            fontSize: 20
          ),))
        ],
      ),
    );
  }
}
