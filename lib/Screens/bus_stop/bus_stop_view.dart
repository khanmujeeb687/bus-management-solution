import 'package:bus_management/Data/database/bus_stop/bus_stop_details.dart';
import 'package:bus_management/Data/database/buses/busesData.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/Widgets/TableItem.dart';
import 'package:flutter/material.dart';


class BusStopScreen extends StatefulWidget {
  @override
  _BusStopScreenState createState() => _BusStopScreenState();
}

class _BusStopScreenState extends State<BusStopScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: TableItem("Bus stop details",busStopData: BusStopDetails.data,),
    );  }
}
