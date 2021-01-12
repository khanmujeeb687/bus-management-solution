import 'package:flutter/material.dart';

class NavigationUtil{



  static Navigate(context,destination){
    return   Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return destination;
        }
    ));
  }
}