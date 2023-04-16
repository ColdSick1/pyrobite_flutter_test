import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/price_list_controller.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/decimal_position_and_scale_factor/decimal_position.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/master_mode/master_mode.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/price_lists/price_lists.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/top_element.dart';
import 'package:test_app/presentation/widgets/loader_level/loader_button.dart';

import '../../../domain/model/text_fiel_model.dart';

class CustomBottomSheet extends StatelessWidget {
  final controller = Get.find<PriceListContoller>();
  CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextModel> newTextModelData = controller.textModelData;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 19, 30) +
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopElement(),
            const SizedBox(
              height: 24,
            ),
            const DecimalPosition(),
            const SizedBox(
              height: 24,
            ),
            MasterMode(),
            const SizedBox(
              height: 24,
            ),
            PriceLists(),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                controller.onSaved(newTextModelData);
                Navigator.pop(context);
              },
              child: const LoaderButton(
                child: 'Сохранить изменения',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
