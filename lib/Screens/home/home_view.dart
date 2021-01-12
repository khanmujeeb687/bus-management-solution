import 'package:bus_management/Screens/employee_details/employee_details_view.dart';
import 'package:bus_management/Utils/NavigationUtil.dart';
import 'package:bus_management/Widgets/CardItem.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WELCOME",
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
              CardItem(
                  "Manage Routes",
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Route in Map',
                              style: TextStyle(
                                  color: EColors.themeBlack,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: EColors.green),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Buses Running',
                              style: TextStyle(
                                  color: EColors.themeBlack,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "45",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: EColors.green),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              showLoader: true,
              ),
              CardItem(
                "Check Bus Details",
                Container(),
              ),
              CardItem(
                  "Bus Stop Details",
                  Text(
                    "See which bus arrives when",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),showLoader: true,),
              CardItem("Trip Information", Container()),
              GestureDetector(
                onTap: (){
                  NavigationUtil.Navigate(context, EmployeeDetails());
                },
                child: CardItem(
                    "Employee Details",
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          new LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 10.0,
                            leading: new Text(
                              "Drivers",
                              style: TextStyle(fontSize: 10),
                            ),
                            percent: 0.2,
                            backgroundColor: EColors.themeGrey.withOpacity(0.5),
                            center: Text(
                              "20.0%",
                              style: TextStyle(fontSize: 10),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: EColors.green,
                          ),
                          new LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 10.0,
                            leading: new Text(
                              "Conductors",
                              style: TextStyle(fontSize: 10),
                            ),
                            percent: 0.2,
                            backgroundColor: EColors.themeGrey.withOpacity(0.5),
                            center: Text(
                              "90.0%",
                              style: TextStyle(fontSize: 10),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: EColors.green,
                          ),
                          new LinearPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            lineHeight: 10.0,
                            leading: new Text(
                              "Ticket sellers",
                              style: TextStyle(fontSize: 10),
                            ),
                            percent: 0.2,
                            backgroundColor: EColors.themeGrey.withOpacity(0.5),
                            center: Text(
                              "50.0%",style: TextStyle(
                                fontSize: 10
                            ),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: EColors.green,
                          ),
                        ],
                      ),
                    )),
              ),
              CardItem("Schedule", Container()),
            ],
          )
        ],
      ),
    );
  }
}
