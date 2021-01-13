import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Screens/conductors/Conductors.dart';
import 'package:bus_management/Screens/driver_profile/driver_profile_view.dart';
import 'package:bus_management/Screens/drivers/drivers_view.dart';
import 'package:bus_management/Screens/ticket_seller/ticket_seller_view.dart';
import 'package:bus_management/Utils/NavigationUtil.dart';
import 'package:bus_management/Widgets/CardItem.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class EmployeeDetails extends StatefulWidget {
  @override
  _EmployeeDetailsState createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: new LinearPercentIndicator(
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    leading: new Text(
                      "Drivers",
                      style: TextStyle(fontSize: 15),
                    ),
                    percent: EmployeeData.getDriversPercent(),
                    backgroundColor: EColors.themeGrey.withOpacity(0.5),
                    center: Text(
                      "${(EmployeeData.getDriversPercent()*100).toStringAsFixed(2)}%",
                      style: TextStyle(fontSize: 10),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: EColors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: new LinearPercentIndicator(
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    leading: new Text(
                      "Conductors",
                      style: TextStyle(fontSize: 15),
                    ),
                    percent: EmployeeData.getConductorsPercent(),
                    backgroundColor: EColors.themeGrey.withOpacity(0.5),
                    center: Text(
                      "${(EmployeeData.getConductorsPercent()*100).toStringAsFixed(2)}%",
                      style: TextStyle(fontSize: 10),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: EColors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: new LinearPercentIndicator(
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    leading: new Text(
                      "Ticket sellers",
                      style: TextStyle(fontSize: 15),
                    ),
                    percent: EmployeeData.getTicketSellersPercent(),
                    backgroundColor: EColors.themeGrey.withOpacity(0.5),
                    center: Text(
                      "${(EmployeeData.getTicketSellersPercent()*100).toStringAsFixed(2)}%",style: TextStyle(
                        fontSize: 10
                    ),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: EColors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Employee Details",
            style: TextStyle(
                color: EColors.themeBlack,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              GestureDetector(
                onTap: ()=>NavigationUtil.Navigate(context, Drivers()),
                child: CardItem(
                  "Drivers",
                  Container(),
                ),
              ),

              GestureDetector(
                onTap: ()=>NavigationUtil.Navigate(context, Conductors()),
                child: CardItem(
                  "Conductors",
                  Container()
                  ),
              ),

            ],
          ),
          Container(
            height:MediaQuery.of(context).size.width/2 ,
              width: MediaQuery.of(context).size.width/2,
              child: GestureDetector(
                  onTap: ()=>NavigationUtil.Navigate(context, TicketSeller()),
                  child: CardItem('Ticket seller', Container())))
        ],
      ),
    );
  }
}
