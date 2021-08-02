import 'package:flutter/material.dart';

enum EditMode {
  ADD,
  UPDATE,
}

var shadow = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  )
];

// / Construct a color from a hex code string, of the format #RRGGBB.
Color hexToColor(String code) {
  return new Color(int.parse(code.substring(2), radix: 16) + 0xFF000000);
}