import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/domain/model/text_fiel_model.dart';
import 'package:test_app/presentation/design/colors.dart';

import '../../../contollers/price_list_controller.dart';

class SaveChangesButton extends StatelessWidget {
  final controller = Get.find<PriceListContoller>();

  SaveChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextModel> newTextModelData = controller.textModelData;
    return GestureDetector(
      onTap: () {
        controller.onSaved(newTextModelData);
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: DesignColors.primaryBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Сохранить изменения',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
