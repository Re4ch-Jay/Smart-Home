import 'package:flutter/material.dart';

const kTextSmall = TextStyle(
  letterSpacing: 2,
  fontSize: 18,
  color: Color(0xFFA5A3A3),
);

const kTextMeduim = TextStyle(
  letterSpacing: 2,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color(0xFF424141),
);

const kTextLarge = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
);

const kTextLabelUnselected = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

const kTextLabelSelected =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);

var kBoxDecorationUnselected = BoxDecoration(
  borderRadius: BorderRadius.circular(25),
  color: const Color(0xFFD7D7DC),
);

var kBoxDecorationSelected = BoxDecoration(
  borderRadius: BorderRadius.circular(25),
  color: const Color(0xFF242424),
);

// #242424 selected color
 
// #D7D7DC unselected color