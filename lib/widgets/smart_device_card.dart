import 'package:flutter/material.dart';
import '../utils.dart';

class SmartDeviceCard extends StatelessWidget {
  const SmartDeviceCard({
    super.key,
    required this.image,
    required this.text,
    required this.value,
    required this.onChanged,
    required this.boxDecoration,
    required this.textStyle,
    required this.imageColor,
  });
  final BoxDecoration boxDecoration;
  final String image;
  final String text;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final TextStyle textStyle;
  final Color imageColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 100,
              height: 100,
              color: imageColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    text,
                    style: textStyle,
                  ),
                  Transform.rotate(
                    angle: 3.14 / 2,
                    child: Switch(
                      value: value,
                      onChanged: onChanged,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
