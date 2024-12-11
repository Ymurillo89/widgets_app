import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = "ProgressScreen";

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text("Circular progress indicator"),
          CircularProgressIndicator(
              strokeWidth: 2, backgroundColor: Colors.white),
          SizedBox(height: 30),
          Text("Circular y Linear controlado"),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300),(value){
        return (value*2)/100;

        //take While destruye el el progress cuando se cumple la condicion
      }).takeWhile((element) => element <100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;
        return  Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                  strokeWidth: 2, backgroundColor: Colors.white),
                  //Necesito saber el espacio que tiene disponible para poder ser renderizado
                  Expanded(child: LinearProgressIndicator(value:progressValue ,))
                  
            ],
          ),
        );
      }
    );
  }
}
