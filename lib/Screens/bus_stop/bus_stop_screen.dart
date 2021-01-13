import 'package:bus_management/Data/database/bus_stop/bus_stop_metadata.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';


class BusStopFullDetails extends StatefulWidget {

  BusStop busStop;
  BusStopFullDetails(this.busStop);
  @override
  _BusStopFullDetailsState createState() => _BusStopFullDetailsState();
}

class _BusStopFullDetailsState extends State<BusStopFullDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: Column(
      children: [
        Text('Bus Stop-'+widget.busStop.name,style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold
        ),),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(widget.busStop.description,style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400
          ),),
        ),
        ...List.generate(widget.busStop.buses.length, (i) => Text(widget.busStop.buses[i]+'\n',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: EColors.green),),)
      ],
    ));
  }
}
