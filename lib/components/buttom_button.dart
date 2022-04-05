import 'package:flutter/material.dart';
import 'package:bmi_calc_flutter_final/constants.dart';
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String? buttonTitle;
  const BottomButton({Key? key, required this.onTap, this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toString(),
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
