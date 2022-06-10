
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: const Home(),
    );
  }

}


class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }

}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.workspaces_sharp, size: 40.0,),
        title: const Text("Sos management"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.drafts_outlined)),
          IconButton(
                onPressed: () {}, icon: const Icon(Icons.wordpress_rounded)),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cards(),
          ],
        )
    )
    );
  }

}

Widget card(IconData icon, String title, String subTitle, Color color, Color txtColor){
  return Card(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        color: color,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: txtColor, size: 100.0, ),
            Column(
              children: [
                customText(title, txtColor, 2.0),
                customText(subTitle, txtColor, 1.0),
              ],
            )
          ],
        ),
      ),
    )
  );
}

Text customText(String text, Color color, double scale){
  return Text(text, style: TextStyle(color: color), textScaleFactor: scale,);
}

Widget cards(){
  return Center(
    child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            card(Icons.holiday_village_outlined, "Dashboard", "your worksapace", Colors.black87, Colors.white),
            card(Icons.wifi_2_bar_outlined, "Wifi", "diagnostic your wifi", Colors.black87, Colors.white),
            card(Icons.vpn_key_outlined, "Hotspot", "Manage your hotspot", Colors.black87, Colors.white),
            
          ],
        ),
  );
}

Widget hero(){
  return Container(

  );
}