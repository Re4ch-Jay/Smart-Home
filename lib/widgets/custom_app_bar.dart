import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "images/menu.png",
          width: 50,
          height: 50,
        ),
        const Icon(Icons.person, size: 50),
      ],
    );
  }
}
