import 'package:flutter/material.dart';

import '../../../design/colors.dart';

class TextFieldRow extends StatefulWidget {
  final Function(String text) onChange;
  final String initialValue;

  const TextFieldRow({
    required this.onChange,
    required this.initialValue,
    super.key,
  });

  @override
  State<TextFieldRow> createState() => _TextFieldRowState();
}

class _TextFieldRowState extends State<TextFieldRow> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: ValueKey(DateTime.now()),
      initialValue: widget.initialValue,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 24 / 16),
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      onChanged: (text) => widget.onChange(text),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: DesignColors.borderTextField,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
