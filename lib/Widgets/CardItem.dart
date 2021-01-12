import 'dart:ffi';
import 'dart:math';

import 'package:bus_management/values/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CardItem extends StatefulWidget {
  String title;
  Widget subtitleWidget;
  bool showLoader;
  CardItem(this.title,this.subtitleWidget, {this.showLoader = false});

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        color: EColors.themeBlack, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  widget.subtitleWidget
                ],
              ),
            ),
          ),
          Positioned(
              bottom: -2,
              left: -2,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: EColors.white,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Card(
                  color: EColors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.arrow_forward),
                ),
              )
          ),
          if(widget.showLoader)
            Positioned(
              bottom: -2,
              right:2,
              child:  new CircularPercentIndicator(
                radius: 45.0,
                lineWidth: 4.0,
                percent: 0.60,
                center: new Text("60%"),
                progressColor: EColors.green,
              ),
          )
        ],
      ),
    );
  }
}
