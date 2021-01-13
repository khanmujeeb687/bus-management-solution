import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/Widgets/TableItem.dart';
import 'package:flutter/material.dart';


class ManageRoute extends StatefulWidget {
  @override
  _ManageRouteState createState() => _ManageRouteState();
}

class _ManageRouteState extends State<ManageRoute> {


  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
        child: TableItem('Routes',employeeData:[])
    );
  }

}
