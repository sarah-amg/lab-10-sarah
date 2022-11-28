import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Alart(),
    );
  }
}

class Alart extends StatefulWidget {
  const Alart({super.key});

  @override
  State<Alart> createState() => _AlartState();
}

class _AlartState extends State<Alart> {

    String? a = "Alert";
    var img1 = Image.asset("img/1.jpg");


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          img1,
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: (){
            setState(() {           

              if (a == "Alert") {
              img1 = Image.asset("img/1.jpg");
                a = "Stop Alart";
              } else if(a == "Stop Alart"){
                img1 = Image.asset("img/2.jpg");
                a = "Alart";  
                }
            });

          }, child: Text(a!))
        ],
      )),
    );
  }
}
