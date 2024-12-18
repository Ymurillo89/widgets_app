import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
 
  static const name = "UiControlsScreen";
 
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {

  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDevp = true;
  List<String> games = ["Super Mario", "Zelda", "Mario Kart", "Pokemon"];
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children:  [
        SwitchListTile(
          title: const Text("Switch"),
          subtitle: const Text("Subtitle"),
          value: isDevp,
          onChanged: (value)=>            
            setState(() {
              isDevp = !isDevp;
            })
          ,
        ),

        Column(
          children: [
          ...games.map(
            (e)=> _ListsRadio(nameRadio: e)

          ),
        

          ],
        )
        
        
      ],
    );
  }
}

class _ListsRadio extends StatelessWidget {

  final String nameRadio;

  const _ListsRadio({super.key,required this.nameRadio});

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text("$nameRadio"),
      subtitle: Text("$nameRadio"),
      value: true,
      groupValue: true,
      onChanged: (value)=>{},
    );
  }
}