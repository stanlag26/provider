import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/te.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Provider', style: TextStyle(color: Colors.amber),),
        ),
        backgroundColor: Colors.amberAccent,
        body: AContainer(),
      ),
    );
  }
}


class AContainer extends StatefulWidget {
   AContainer({Key? key}) : super(key: key);

  @override
  State<AContainer> createState() => _AContainerState();
}

class _AContainerState extends State<AContainer> {
   bool _lights = false;
   Random random = Random();
   Color _color = Color.fromRGBO(255, 255, 255, 1);


   void _changColor (){
     int randomNumber1 = random.nextInt(255);
     int randomNumber2 = random.nextInt(255);
     int randomNumber3 = random.nextInt(255);

       _color = Color.fromRGBO(randomNumber1, randomNumber2, randomNumber3, 1);


   }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedContainer(
            width: 200,
            height: 200,
            color: _color,
            duration: const Duration(seconds: 1),
          ),
          SwitchListTile(
            controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Lights'),
              value: _lights,
              onChanged: (bool value) {
                _lights = value;
              _changColor();
              setState(() {

              });
            })
        ],
      ),
    );
  }
}



