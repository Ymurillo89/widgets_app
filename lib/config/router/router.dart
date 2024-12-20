import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/animated/animated_screen.dart';
import 'package:widgets_app/presentation/screen/button/button_screen.dart';
import 'package:widgets_app/presentation/screen/card/card.dart';
import 'package:widgets_app/presentation/screen/home/home_screen.dart';
import 'package:widgets_app/presentation/screen/progress/app_tutorial_screen.dart';
import 'package:widgets_app/presentation/screen/snackbar/snackbar_screen.dart';
import 'package:widgets_app/presentation/screen/uiControls/ui_constrol_screen.dart';

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
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
     GoRoute(
      path: '/ui-Controls',
      builder: (context, state) => const UiControlsScreen(),
    )
  ],
);
