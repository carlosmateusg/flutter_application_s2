import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenInicio extends StatefulWidget {
  const ScreenInicio({super.key});

  @override
  State<ScreenInicio> createState() => _ScreenInicioState();
}

class _ScreenInicioState extends State<ScreenInicio> {
  void verificar(){
    context.go("/config");
  }

   @override




  @override
  Widget build(BuildContext context) {
    //_Hacer el builder de la app
    return Scaffold(
        appBar: AppBar(
          title: Text("monitoreo de gases"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 11, 202, 167),
            ) 
          ]
        )
      );
  }
}
      
