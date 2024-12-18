import 'package:flutter/material.dart';

class MenuItem{

  final String title;
  final String subTitle;
  final String links;
  final IconData icon;

  const MenuItem({required this.title, required this.subTitle, required this.links, required this.icon});

}

const appMenuItems= <MenuItem>[
  MenuItem(title: 'Botones', subTitle: 'Varios botones en Flutter', links: '/buttons', icon: Icons.smart_button),
  MenuItem(title: 'Tarjetas', subTitle: 'Contenedor estilizado', links: '/cards', icon: Icons.credit_card),  
  MenuItem(title: 'ProgressIndicator', subTitle: 'Generales y controlados', links: '/progress', icon: Icons.refresh),  
  MenuItem(title: 'Snackbars', subTitle: 'Generales y controlados', links: '/snackbars', icon: Icons.line_style_sharp),
  MenuItem(title: 'Animated Container', subTitle: 'Stateful widget animado', links: '/animated', icon: Icons.check_box_rounded),  
  MenuItem(title: 'IU Controls +Tiles', subTitle: 'Una serie de controles en flutter', links: '/ui-Controls', icon: Icons.car_rental_outlined),  
  
];
