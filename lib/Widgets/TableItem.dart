import 'package:bus_management/Data/database/employees/employee_metadata.dart';
import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Screens/driver_profile/driver_profile_view.dart';
import 'package:bus_management/Utils/NavigationUtil.dart';
import 'package:flutter/material.dart';


class TableItem extends StatefulWidget {
  String title;
  List<Employee> data;
  TableItem(this.title,this.data);
  @override
  _TableItemState createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 120),
      child: Column(
        children: [
          Text(widget.title, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          ...List.generate(widget.data.length, (index){
            return ListTile(
              onTap: ()=>NavigationUtil.Navigate(context, DriverProfile(widget.data[index])),
              title: Text(widget.data[index].name,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300),),
              trailing: Text("Bus No - ${widget.data[index].busNo}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
              contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),

            );
          })
        ],
      ),
    );
  }
}
