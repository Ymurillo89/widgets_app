import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/button/button_screen.dart';
import 'package:widgets_app/presentation/screen/card/card.dart';
import 'package:widgets_app/presentation/screen/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    )
  ],
);
