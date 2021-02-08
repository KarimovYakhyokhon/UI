import 'package:flutter/material.dart';
import 'package:february_03_ui_1/Utilities.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard ({@required this.onPress, this.cardChild});

  final Function onPress;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
          height: MediaQuery.of(context).size.height/6,
          width: MediaQuery.of(context).size.width/1.1,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
              color: kWhiteColor,
              boxShadow: [BoxShadow(blurRadius: 3, color: Colors.black12,spreadRadius: 1.0)]
          )
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class ReusableCard extends StatelessWidget {
//   ReusableCard({@required this.colour, this.cardChild, this.onPress });
//
//   final Color colour;
//   final Widget cardChild;
//   final Function onPress;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//           child: cardChild  ,
//           margin: EdgeInsets.all(15.0),
//           decoration: BoxDecoration(
//               color: colour, borderRadius: BorderRadius.circular(10.0)),
//           height: 200.0,
//           width: double.infinity
//       ),
//     );
//   }
// }