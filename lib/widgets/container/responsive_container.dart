import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveContainer extends Container {
  double? maxWidth;
  double? minWidth;
  double? maxHeight;
  double? minHeight;
  double? width;
  double? height;
  ResponsiveContainer({
    super.key,
    super.alignment,
    super.padding,
    super.color,
    super.decoration,
    super.foregroundDecoration,
    super.margin,
    super.transform,
    super.transformAlignment,
    super.child,
    super.clipBehavior,
    this.maxWidth,
    this.minWidth,
    this.maxHeight,
    this.minHeight,
    this.width,
    this.height,
  }) : super(
          constraints: BoxConstraints(
            maxWidth: maxWidth ?? double.infinity,
            minWidth: minWidth ?? 0,
            maxHeight: maxHeight ?? double.infinity,
            minHeight: minHeight ?? 0,
          ),
          width: width,
          height: height,
        );

  static ResponsiveContainer fromWidth({required Widget child, double? width, double? height}) {
    ResponsiveContainer container = ResponsiveContainer(
      maxWidth: 1000,
      minWidth: 0,
      maxHeight: double.infinity,
      minHeight: 0,
      width: width,
      height: height,
      child: child,
    );

    return container;
  }

  static ResponsiveContainer fromHeight({required Widget child, double? width, double? height}) {
    ResponsiveContainer container = ResponsiveContainer(
      maxWidth: double.infinity,
      minWidth: 0,
      maxHeight: 1000,
      minHeight: 0,
      width: width,
      height: height,
      child: child,
    );

    return container;
  }

  static ResponsiveContainer fromSize({required Widget child, double? width, double? height}) {
    ResponsiveContainer container = ResponsiveContainer(
      maxWidth: 1000,
      minWidth: 0,
      maxHeight: 400,
      minHeight: 0,
      width: width,
      height: height,
      child: child,
    );

    return container;
  }
}
