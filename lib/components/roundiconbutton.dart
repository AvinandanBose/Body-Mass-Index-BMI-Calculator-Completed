import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final Function onPressed;
  const RoundIconButton({Key? key, this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPressed();
      },
      elevation: 0.0,
      child: Icon(icon),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: const Color(0xFF0069F2),
    );
  }
}
