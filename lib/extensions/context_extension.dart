import 'dart:math' as math;

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {}

extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension RandomExtension on BuildContext {
  Color get randomColor => Colors.primaries[math.Random().nextInt(Colors.primaries.length)];
}
