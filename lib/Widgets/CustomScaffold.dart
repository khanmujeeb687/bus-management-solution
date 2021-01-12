import 'package:flutter/material.dart';


class CustomScaffold extends StatefulWidget {
  Widget child;
  CustomScaffold({
    @required this.child
});
  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/background.jpeg"),
            SizedBox(height: 20,),
            widget.child
          ],
        ),
      ),
    );
  }
}
