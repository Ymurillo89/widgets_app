import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = "SnackbarScreen";

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Hola Mundo"),
            action: SnackBarAction(label: "Ok", onPressed: (){}),
            duration: const Duration(seconds: 3), // Duración en segundos
           
          )
        );
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          title: const Text("Titulo"),
          content: const Text("Contenido de la página "),
          actions: [
            TextButton(onPressed: ()=>context.pop(), child:const Text("Cancel")),
            FilledButton(onPressed: ()=> context.pop(), child: const Text("Aceptar"))
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar y Diálogos" ),
      ),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text("Hola mundo")
                  ]
                );
              },
              child: const Text("Licencias usadas")
            ),

            FilledButton.tonal(
              onPressed: (){
                openDialog(context);
              },
              child: const Text("Diálogos")
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(label: const Text("Mostrar Snackbar "),icon: const Icon(Icons.data_array),onPressed: (){        
        showCustomSnackbar(context);
      },),
    );
  }
}