import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/Widgets/TableItem.dart';
import 'package:flutter/material.dart';


class Conductors extends StatefulWidget {
  @override
  _TicketSellerState createState() => _TicketSellerState();
}

class _TicketSellerState extends State<Conductors> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: TableItem("Conductors",EmployeeData.getConductors()),
    );
  }
}
