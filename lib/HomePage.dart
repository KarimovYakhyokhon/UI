import 'package:february_03_ui_1/First_Page_Template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: GestureDetector(
              child: RaisedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPageTemplate() )),
              child: Text('Submit'),),
            ),
          )
        ],
      ),
    );
  }
}
