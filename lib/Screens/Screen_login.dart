import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) 

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}
class _ScreenLoginState extends State<ScreenLogin>{
  final codigo= TextEditingController();
  void _validar(){
    if(codigo.text=="1234"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScreenInicio()),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Código incorrecto"))
      );
  }  
}

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(58.0),
              child: TextField(
                controller: codigo,
                decoration: InputDecoration(
                  labelText: "código",
                  //hint: Text("Ingrese el código ..."),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              
              ),
            ),
            ElevatedButton(
              onPressed: _validar, 
              child: Text("Verificar"))

          ],
        ),),
    );
  }
}

 