import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

class LoaderButton extends StatelessWidget {
  final String child;
  const LoaderButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: DesignColors.canvasColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: DesignColors.primaryBlue,
        ),
      ),
      child: Text(
        child,
        style: Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
