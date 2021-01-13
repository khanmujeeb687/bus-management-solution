import 'package:bus_management/Data/database/buses/busesData.dart';
import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/Widgets/TableItem.dart';
import 'package:flutter/material.dart';

class BusDetails extends StatefulWidget {
  @override
  _BusDetailsState createState() => _BusDetailsState();
}

class _BusDetailsState extends State<BusDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: TableItem("Bus Details",busData: BusesData.data,),
    );  }
}
