import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/decimal_position_and_scale_factor/custom_checkbox.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/decimal_position_and_scale_factor/text_fields_row.dart';
import 'package:test_app/presentation/widgets/widget_layout.dart';

class DecimalPosition extends StatefulWidget {
  const DecimalPosition({super.key});
  @override
  State<DecimalPosition> createState() => _DecimalPositionState();
}

class _DecimalPositionState extends State<DecimalPosition> {
  var checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WidgetLayout(
          'Decimal position',
          SizedBox(height: 8),
          TextFieldsRow(),
        ),
        const SizedBox(
          height: 24,
        ),
        const WidgetLayout(
          'Scale factor',
          SizedBox(height: 8),
          TextFieldsRow(),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomCheckbox(),
      ],
    );
  }
}
