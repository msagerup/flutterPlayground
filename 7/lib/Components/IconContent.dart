import 'package:flutter/material.dart';

const textLabel = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);
const iconSize = 80.0;

class IconContent extends StatelessWidget {
  IconContent({this.iconVariant, this.label});

  final IconData iconVariant;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconVariant,
          size: iconSize,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: textLabel,
        ),
      ],
    );
  }
}
