import 'package:bus_management/Data/database/buses/bus_metatdata.dart';
import 'package:bus_management/Data/database/employees/employee_metadata.dart';
import 'package:bus_management/Data/database/employees/employees_data.dart';
import 'package:bus_management/Screens/bus/BusFullDetails.dart';
import 'package:bus_management/Screens/driver_profile/driver_profile_view.dart';
import 'package:bus_management/Utils/NavigationUtil.dart';
import 'package:flutter/material.dart';


class TableItem extends StatefulWidget {
  String title;
  List<Employee> employeeData;
  List<Bus> busData;
  TableItem(this.title,{this.busData,this.employeeData});
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
          ...List.generate(widget.busData.length, (index){
            if(widget.employeeData!=null){
              return ListTile(
                onTap: ()=>NavigationUtil.Navigate(context, DriverProfile(widget.employeeData[index])),
                title: Text(widget.employeeData[index].name,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300),),
                trailing: Text("Bus No - ${widget.employeeData[index].busNo}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
                contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),

              );
            }else if(widget.busData!=null){
              return ListTile(
                onTap: ()=>NavigationUtil.Navigate(context, BusFullDetails(widget.busData[index])),
                title: Wrap(
                  children: List.generate(widget.busData[index].routes.length, (i) => Text(widget.busData[index].routes[i]+'->',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),),
                ),
                trailing: Text("Bus No - ${widget.busData[index].no}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
                contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),

              );
            }
            return Container();
          })
        ],
      ),
    );
  }
}
