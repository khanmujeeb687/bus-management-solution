import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/Widgets/TableItem.dart';
import 'package:flutter/material.dart';


class TicketSeller extends StatefulWidget {
  @override
  _TicketSellerState createState() => _TicketSellerState();
}

class _TicketSellerState extends State<TicketSeller> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: TableItem("Ticket Seller",employeeData:EmployeeData.getTicketSeller()),
    );
  }
}
