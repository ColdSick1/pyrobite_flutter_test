import 'package:flutter/material.dart';

class WidgetLayout extends StatelessWidget {
  final String title;
  final Widget spacing;
  final Widget child;
  const WidgetLayout(this.title, this.spacing, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.displayLarge),
        spacing,
        child,
      ],
    );
  }
}
