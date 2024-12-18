import 'package:flutter/material.dart';

 const games = <Map<String, dynamic>>[
    {"selected": false, "label": "Super Mario"},
    {"selected": false, "label": "Zelda"},
    {"selected": false, "label": "Mario Kart"},
    {"selected": false, "label": "Pokemon"},
  ];
  
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
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Switch"),
          subtitle: const Text("Subtitle"),
          value: isDevp,
          onChanged: (value) => setState(() {
            isDevp = !isDevp;
          }),
        ),
        ExpansionTile(
          title: const Text("Expansion Tile"),
          subtitle:  const Text("Game selected"),
          children: [
            
            ...games.map((e) => _ListsRadio(nameRadio: e["label"], isSelected: e["selected"],)),
          ],
        ),

        ExpansionTile(
          title: const Text("Expansion Tile"),
          subtitle:  const Text("Game selected"),
          children: [
            CheckboxListTile(title: const Text("Desayuno"),value: wantsBreakfast, onChanged: (value){ setState(() {
              wantsBreakfast = !wantsBreakfast;
            });}),

            CheckboxListTile(title: const Text("Almuerzo"),value: wantsLunch, onChanged: (value){setState(() {
              wantsLunch = !wantsLunch;
            });}),

            CheckboxListTile(title: const Text("Cena"),value: wantsDinner, onChanged: (value){setState(() {
              wantsDinner = !wantsDinner;
            });}),

            
            
          ],
        ),
      ],
    );
  }
}

class _ListsRadio extends StatefulWidget {

  String nameRadio;
  bool isSelected;

  _ListsRadio({super.key, required this.nameRadio,required this.isSelected});

  @override
  State<_ListsRadio> createState() => _ListsRadioState();
}

class _ListsRadioState extends State<_ListsRadio> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text("${widget.nameRadio}"),
      subtitle: Text("${widget.nameRadio}"),
      value: widget.isSelected,
      groupValue: true,
      onChanged: (value) => setState(() {
          widget.isSelected = !widget.isSelected;
        })      ,
    );
  }
}
