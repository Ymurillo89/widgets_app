import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentation/screen/button/button_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluuter + material 3"),
        
      ),
      body:const _HomeView() ,
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    
    return ListView.builder(
      /* physics: BouncingScrollPhysics(), */
      itemCount: appMenuItems.length,
      itemBuilder:(context, index)
      {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);        
      }
    );
  }
}

class _CustomListTitle extends StatelessWidget {

  final MenuItem menuItem;

  const _CustomListTitle({required this.menuItem,});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon,color:colors.primary),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: ()=>  context.push(menuItem.links)
      
    );
  }
}