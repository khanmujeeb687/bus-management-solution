import 'package:bus_management/Data/database/employees/employee_metadata.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverProfile extends StatefulWidget {
  Employee employee;
  DriverProfile(this.employee);
  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
        children: [
          Center(
              child: Icon(
            Icons.account_circle,
            size: 200,
            color: EColors.themeGrey,
          )),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name: ",
                style: TextStyle(color: EColors.themeGreen, fontSize: 24),
              ),
              Text(
                widget.employee.name,
                style: TextStyle(color: EColors.themeBlack, fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Phone No: ",
                style: TextStyle(color: EColors.themeGreen, fontSize: 24),
              ),
              Text(
                widget.employee.phone,
                style: TextStyle(color: EColors.themeBlack, fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Licence No: ",
                style: TextStyle(color: EColors.themeGreen, fontSize: 24),
              ),
              Text(
                widget.employee.Licence,
                style: TextStyle(color: EColors.themeBlack, fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "DOB: ",
                style: TextStyle(color: EColors.themeGreen, fontSize: 24),
              ),
              Text(
                widget.employee.DOB,
                style: TextStyle(color: EColors.themeBlack, fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Date of Joining: ",
                style: TextStyle(color: EColors.themeGreen, fontSize: 24),
              ),
              Text(
                widget.employee.DateOfJourney,
                style: TextStyle(color: EColors.themeBlack, fontSize: 24),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
