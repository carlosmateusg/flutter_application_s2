import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_s2/Screens/domain/app_router.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({Key? key});

@override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      routerConfig: app_routes,
    );
  }
}



