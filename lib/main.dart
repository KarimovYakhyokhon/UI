import 'package:february_03_ui_1/First_Page_Template.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main()=> runApp(UI());

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
