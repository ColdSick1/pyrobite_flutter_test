import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/loader_level/animated_count.dart';

import 'custom_clipper.dart';

class LoaderLevelBox extends StatelessWidget {
  final int percent;
  const LoaderLevelBox({required this.percent, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CustomClipperLoader(
          percent: percent,
        ),
        Positioned(
          left: 16,
          top: 16,
          child: AnimatedCount(count: percent),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Text(
            'Текущий уровень\nзагрузки',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
