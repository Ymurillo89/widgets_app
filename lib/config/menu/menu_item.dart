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
  /*MenuItem(title: 'Contact Us', subTitle: 'Get in touch with us', links: 'https://www.example.com/contact', icon: Icons.contact_mail),
  MenuItem(title: 'Privacy Policy', subTitle: 'Learn about our privacy policy', links: 'https://www.example.com/privacy', icon: Icons.info_outline), */
];