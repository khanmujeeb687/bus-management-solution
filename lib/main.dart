
import 'package:bus_management/Screens/drivers/drivers_view.dart';
import 'package:flutter/material.dart';

import 'Screens/driver_profile/driver_profile_view.dart';
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