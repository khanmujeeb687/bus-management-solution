import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Screens/driver_profile/driver_profile_view.dart';
import 'package:bus_management/Utils/NavigationUtil.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/Widgets/TableItem.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';

class Drivers extends StatefulWidget {
  @override
  _DriversState createState() => _DriversState();
}

class _DriversState extends State<Drivers> {


  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
      child: TableItem('Drivers',EmployeeData.getDrivers())
    );
  }
}
