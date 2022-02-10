
import 'package:flutter/material.dart';
import 'package:watch_center/utils/color_constants.dart';
import 'package:watch_center/utils/dimensions.dart';

class RoundedButton extends StatelessWidget {
  String buttonName;
  Color color;

  RoundedButton(
      {Key? key, required Color this.color, required String this.buttonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: Dimensions.screenWidth,
      height: Dimensions.screenHeight / 20,
      decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(
          child: Text(
        this.buttonName.toUpperCase(),
        style: TextStyle(
            fontSize: Dimensions.screenHeight / 50,
            color: ColorConstants.white),
      )),
    )
    );
  }
}
