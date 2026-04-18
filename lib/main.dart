import 'package:flutter/material.dart';

void main(){
  runApp(Principal());
}

class Principal extends StatefulWidget{
  const Principal({Key? key});
@override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenLogin ()
    );
  }
}

