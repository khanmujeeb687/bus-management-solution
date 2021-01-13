import 'package:bus_management/Data/database/routes/routes_metadata.dart';
import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';



class RouteDetails extends StatefulWidget {

  Routes route;
  RouteDetails(this.route);
  @override
  _RouteDetailsState createState() => _RouteDetailsState();
}

class _RouteDetailsState extends State<RouteDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: Column(
      children: [
        Text('Route :${widget.route.stations.first} -- ${widget.route.stations[widget.route.stations.length-1]}',style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold
        ),),
        ...List.generate(widget.route.stations.length, (index){
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
              title: Text(widget.route.stations[index]),
              subtitle: Wrap(
                children: List.generate(2, (i) => Text(widget.route.buses[i]+'\n',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: EColors.green),),),
              ),
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
