import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  static const name = "AnimatedScreen";
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
    
  double width = 100;
  double height = 100;
  Color color = Colors.indigo;
  double borderRadius =10.0;
  // BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    
    final random = Random();
    width = random.nextInt(300) + 120;
    height = random.nextInt(400) + 120;    
    borderRadius = random.nextInt(100) + 20; 
    color = color == Colors.blue ? Colors.red : Colors.blue;
    setState(() {});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedScreen"),
      ),      
      body:  Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 400),
          curve: Curves.elasticIn,
          width: width>=0?0:width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>changeShape(),
        
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}