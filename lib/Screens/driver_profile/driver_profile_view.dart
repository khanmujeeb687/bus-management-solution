import 'package:bus_management/Widgets/CustomScaffold.dart';
import 'package:bus_management/values/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverProfile extends StatefulWidget {
  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {


  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
      child: Container(
child:Column(
  children: [
    Center(child: Icon(Icons.supervised_user_circle, size: 200,color: EColors.themeGrey,)),
    SizedBox(height: 40,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text("Name: ",style: TextStyle(color: EColors.themeGreen, fontSize: 24),),
        Text("Mukesh Ambani",style:TextStyle(color: EColors.themeBlack, fontSize: 24),),
      ],
    ),
    SizedBox(height: 15,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Phone No: ",style: TextStyle(color: EColors.themeGreen, fontSize: 24),),
        Text("7982545255",style:TextStyle(color: EColors.themeBlack, fontSize: 24),),
      ],
    ),
    SizedBox(height: 15,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Licence No: ",style: TextStyle(color: EColors.themeGreen, fontSize: 24),),
        Text("101102",style:TextStyle(color: EColors.themeBlack, fontSize: 24),),
      ],
    ),
    SizedBox(height: 15,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("DOB: ",style: TextStyle(color: EColors.themeGreen, fontSize: 24),),
        Text("13/10/1864",style:TextStyle(color: EColors.themeBlack, fontSize: 24),),
      ],
    ),
    SizedBox(height: 15,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Date of Joining: ",style: TextStyle(color: EColors.themeGreen, fontSize: 24),),
        Text("20/10/2015",style:TextStyle(color: EColors.themeBlack, fontSize: 24),),
      ],
    ),
  ],
)
      ),
    );
  }
}
