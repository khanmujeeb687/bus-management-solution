import 'package:bus_management/Data/database/buses/bus_metatdata.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class BusFullDetails extends StatefulWidget {
  Bus bus;
  BusFullDetails(this.bus);
  @override
  _BusFullDetailsState createState() => _BusFullDetailsState();
}

class _BusFullDetailsState extends State<BusFullDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: Column(
      children: [
        Text('Bus number-'+widget.bus.no,style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold
        ),),
        ...List.generate(widget.bus.routes.length, (index){
          return TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isFirst: false,
            isLast: false,
            indicatorStyle: IndicatorStyle(
              width: 40,
              height: 40,
              indicator: CircleAvatar(
                backgroundColor: EColors.themePink,
                child: Icon(Icons.check,color: EColors.white,),
                radius: 50,
              ),
              drawGap: true,
            ),
            afterLineStyle: LineStyle(
              color: EColors.themeGrey,
            ),
            beforeLineStyle: LineStyle(
              color: EColors.themePink,
            ),
            endChild:ListTile(
              title: Text(widget.bus.routes[index]),
              onTap: () {

              },
            ),
          );
        }
        )
      ],
    ));
  }
}
