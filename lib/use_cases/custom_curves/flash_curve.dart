import 'dart:math' as math;

import 'package:flutter/material.dart';

class FlashCurve extends Curve {
  final int flashes;
  const FlashCurve({
    this.flashes = 8,
  });

  @override
  double transformInternal(double t) {
    return (1 - math.cos(2 * math.pi * t * flashes)) / 2;
  }
}

class InFlashCurve extends Curve {
  final int flashes;
  const InFlashCurve({
    this.flashes = 8,
  });

  @override
  double transformInternal(double t) {
    if (t < 0.4) {
      // 0-0.4 -> in flash
      return (1 - math.cos(2 * math.pi * t * flashes)) / 2;
    } else {
      // 0.4-1 -> out sine
      return 0.5 * (1 - math.cos(math.pi * (t - 0.4) * 2));
    }
  }
}

class OutFlashCurve extends Curve {
  final int flashes;
  const OutFlashCurve({
    this.flashes = 8,
  });

  @override
  double transformInternal(double t) {
    if (t < 0.6) {
      // 0-0.6 -> in sine
      return 0.5 * (1 - math.cos(math.pi * t * 2));
    } else {
      // 0.6-1 -> out flash
      return (1 - math.cos(2 * math.pi * (t - 0.6) * flashes)) / 2;
    }
  }
}
