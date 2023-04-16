import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/price_list_controller.dart';

import '../../../design/colors.dart';

class DeleteIcon extends StatelessWidget {
  final int getIndex;
  final controller = Get.find<PriceListContoller>();
  DeleteIcon(this.getIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.removeElement(getIndex);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: DesignColors.indicatorRed.withOpacity(0.08),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.close,
          color: DesignColors.indicatorRed,
        ),
      ),
    );
  }
}
