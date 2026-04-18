import 'package:flutter_application_s2/Screens/screens/screen_config.dart';
import 'package:flutter_application_s2/Screens/screens/screen_inicio.dart';
import 'package:flutter_application_s2/Screens/screens/screen_login.dart';
import 'package:go_router/go_router.dart';

final approutes = GoRouter(
  initialLocation: "/start",
  routes: [
    GoRoute(
      path: "/start",
      builder: (context, state) => const ScreenInicio(),
    ),
    GoRoute(
      path: "/config",
      builder: (context, state) =>  ScreenConfig(),
    ),  
    GoRoute(
      path: "/login",
      builder: (context, state) =>  ScreenLogin(),
    ), 
  ]
  
  );