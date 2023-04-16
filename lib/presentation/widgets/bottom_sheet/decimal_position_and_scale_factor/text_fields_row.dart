import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/decimal_position_and_scale_factor/text_fields.dart';

class TextFieldsRow extends StatelessWidget {
  const TextFieldsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: TextFields('Cash')),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: TextFields('Cashless'),
        ),
      ],
    );
  }
}
