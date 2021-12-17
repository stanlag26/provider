// TODO Implement this library.


import 'dart:math';

import 'package:flutter/material.dart';

class ChangColorProvider extends ChangeNotifier{


  Random random = Random();
  Color _color = Color.fromRGBO(255, 255, 255, 1);


  void _changColor (){
    int randomNumber1 = random.nextInt(255);
    int randomNumber2 = random.nextInt(255);
    int randomNumber3 = random.nextInt(255);

    _color = Color.fromRGBO(randomNumber1, randomNumber2, randomNumber3, 1);
    notifyListeners();


  }
}