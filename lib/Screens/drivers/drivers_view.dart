import 'package:bus_management/Widgets/CustomScaffold.dart';
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
      child: Container(
        child: Column(
          children: [
            Text("Drivers", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            ListTile(
              title: Text("Sohan Pal",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300),),
              trailing: Text("Bus No - 4",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
              contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),

            ),
            ListTile(
              title: Text("Sunny Singh",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300),),
              trailing: Text("Bus No - 3",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
              contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),

            ),
            ListTile(
              title: Text("Rohit Jain",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300),),
              trailing: Text("Bus No - 2",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
              contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),
            ),
            ListTile(
              title: Text("Satpal Lal",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300),),
              trailing: Text("Bus No - 6",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
              contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),
            ),
          ],
        ),
      ),
    );
  }
}
