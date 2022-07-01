import 'package:flutter/material.dart';
import 'package:eventsquid.quickscan/app/style/dimensions.dart';

import '../style/color_constants.dart';

class RoundedButton extends StatelessWidget {
  String buttonName;
  Color color;

  RoundedButton({Key? key, required this.color, required this.buttonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: Dimensions.screenWidth,
      height: Dimensions.screenHeight / 20,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(const Radius.circular(20))),
      child: Center(
          child: Text(
        buttonName.toUpperCase(),
        style: TextStyle(
            fontSize: Dimensions.screenHeight / 50,
            color: ColorConstants.white),
      )),
    ));
  }
}
