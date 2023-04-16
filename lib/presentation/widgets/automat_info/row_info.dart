import 'package:flutter/material.dart';

class RowInfo extends StatelessWidget {
  final String title;
  final String property;
  const RowInfo(this.title, this.property, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          property,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
