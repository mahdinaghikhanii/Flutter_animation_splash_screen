import 'package:flutter/material.dart';

class RainDropAnimation {
  final AnimationController controller;
  late final Animation<double> dropSize;
  late final Animation<double> dropPosition;
  late final Animation<bool> dropVisible;
  late final Animation<double> holeSiz;
  late final Animation<double> textOpacity;

  static const double maximumDropSize = 20;
  static const double maximumRelativeDrop = 0.5;
  static const double maximumHoldSize = 10;

  RainDropAnimation(this.controller)
      : dropSize = Tween<double>(begin: 0, end: maximumDropSize).animate(
            CurvedAnimation(
                parent: controller,
                curve: const Interval(0.0, 0.2, curve: Curves.easeIn))),
        dropPosition = Tween<double>(begin: 0, end: maximumRelativeDrop)
            .animate(CurvedAnimation(
                parent: controller, curve: const Interval(0.2, 0.5))),
        holeSiz = Tween<double>(begin: 0, end: maximumHoldSize).animate(
            CurvedAnimation(
                parent: controller, curve: const Interval(0.5, 1.0))),
        textOpacity = Tween<double>(end: 1, begin: 0).animate(CurvedAnimation(
            curve: const Interval(0.5, 0.7, curve: Curves.easeOut),
            parent: controller));
}
