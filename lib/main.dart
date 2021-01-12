
import 'package:flutter/material.dart';

import 'Screens/home/home_view.dart';
import 'values/theme.dart';

void main() {
  runApp(
    new MaterialApp(
      theme: DarkRegular.getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Bus Management',
      home: Home(),
    )
  );
}