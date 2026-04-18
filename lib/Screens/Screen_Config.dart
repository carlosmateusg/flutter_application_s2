import 'package:flutter/material.dart';

class ScreenConfig extends StatelessWidget{
  ScreenConfig({Key? key});
}

final List<String> items = [
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
  "Gases: CO2= 0.10%, CO= 1PPM, O2 20.9% , H2S= 0, CH4= 0.1%, NO2= 0.01%",
];

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      title: const Text("Listado de mediciones", style: TextStyle(color: Colors.white),),
      actions: [
        IconButton(icon: const Icon(Icons.search, color: Colors.white,), onPressed: (){})
        IconButton(icon: const Icon(Icons.more_vert, color: Color.fromARGB(255, 169, 23, 23),), onPressed: (){})
      ],
    ),
body: ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    final item= items[index];
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(item.avatarurl),),
      title: Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(item.message),
      trailing: Text(item.time.toString(), style: const TextStyle(color: Colors.grey, fontSize: 12)),
      );
  },
),

floatingActionButton: FloatingActionButton(
  backgroundColor: const Color.fromARGB(255, 152, 41, 41),
  child: const Icon(Icons.message, color: Colors.white,),
  onPressed: (){},
),
);
}
