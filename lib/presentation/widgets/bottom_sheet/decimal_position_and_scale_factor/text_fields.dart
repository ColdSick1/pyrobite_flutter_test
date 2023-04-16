import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

class TextFields extends StatelessWidget {
  final String content;
  const TextFields(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 8),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: DesignColors.borderTextField,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          hintText: content,
          hintStyle:
              Theme.of(context).textTheme.titleSmall!.copyWith(height: 24 / 16),
        ),
      ),
    );
  }
}
