import 'package:animated_number/animated_number.dart';
import 'package:flutter/material.dart';

class AnimatedCount extends StatelessWidget {
  final int count;
  const AnimatedCount({required this.count, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedNumber(
      startValue: 0,
      endValue: count,
      duration: const Duration(milliseconds: 700),
      isFloatingPoint: false,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 40),
      sufixText: '%',
    );
  }
}
