import 'package:bus_management/Data/database/bus_stop/bus_stop_metadata.dart';
import 'package:bus_management/Data/database/buses/bus_metatdata.dart';
import 'package:bus_management/Data/database/employees/employee_metadata.dart';
import 'package:bus_management/Data/database/routes/routes_metadata.dart';
import 'package:bus_management/Screens/bus/BusFullDetails.dart';
import 'package:bus_management/Screens/bus_stop/bus_stop_screen.dart';
import 'package:bus_management/Screens/bus_stop/bus_stop_view.dart';
import 'package:bus_management/Screens/driver_profile/driver_profile_view.dart';
import 'package:bus_management/Screens/routes/route_details.dart';
import 'package:bus_management/Utils/NavigationUtil.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';


class TableItem extends StatefulWidget {
  String title;
  List<Employee> employeeData;
  List<Bus> busData;
  List<Routes> routeData;
  List<BusStop> busStopData;
  TableItem(this.title,{this.busData,this.employeeData,this.routeData,this.busStopData});
  @override
  _TableItemState createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {

  int listLength=0;

  @override
  void initState() {
    if(widget.routeData!=null){
      listLength=widget.routeData.length;
    }
    if(widget.busData!=null){
      listLength=widget.busData.length;
    }
    if(widget.employeeData!=null){
      listLength=widget.employeeData.length;
    }
    if(widget.busStopData!=null){
      listLength=widget.busStopData.length;
    }
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 120),
      child: Column(
        children: [
          Text(widget.title, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          ...List.generate(listLength, (index){
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
            }else if(widget.routeData!=null){
              return ListTile(
                onTap: ()=>NavigationUtil.Navigate(context, RouteDetails(widget.routeData[index])),
                title: Wrap(
                  children: List.generate(2, (i) => Text(widget.routeData[index].stations[i]+'->',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),),
                ),
                trailing: Wrap(
                  children: List.generate(2, (i) => Text(widget.routeData[index].buses[i]+'\n',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: EColors.green),),),
                ),
                contentPadding: EdgeInsets.fromLTRB(50, 0, 50,0),
              );
            }else if(widget.busStopData!=null){
              return ListTile(
                onTap: ()=>NavigationUtil.Navigate(context, BusStopFullDetails(widget.busStopData[index])),
                title:  Text("${widget.busStopData[index].name}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),),
                subtitle:  Text("${widget.busStopData[index].description}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),overflow: TextOverflow.ellipsis,),
                trailing: Wrap(
                  children: List.generate(2, (i) => Text(widget.busStopData[index].buses[i]+'\n',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: EColors.green),),),
                ),
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
