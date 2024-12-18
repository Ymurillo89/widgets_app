class GameItem{
 
 final String name;
  final bool selected;
  
 const GameItem({required this.name, required this.selected});

}

var appGameItems=<GameItem>[
  GameItem(name: 'New Game', selected: false),
  GameItem(name: 'Load Game', selected: true),
  GameItem(name: 'Save Game', selected: false),
  GameItem(name: 'Exit', selected: false),
];