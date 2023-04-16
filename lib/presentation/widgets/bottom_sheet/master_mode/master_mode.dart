import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/master_mode_controller.dart';
import 'package:test_app/presentation/design/colors.dart';
import 'package:test_app/presentation/widgets/widget_layout.dart';

class MasterMode extends StatelessWidget {
  final controller = Get.find<MasterModeController>();
  MasterMode({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLayout(
      'Режим Мастер',
      const SizedBox(
        height: 16,
      ),
      GestureDetector(
        onTap: () {
          controller.switcherMasterMode();
        },
        child: Row(
          children: [
            Expanded(
              child: Obx(
                () => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: controller.isEnable.value
                        ? DesignColors.primaryBlue
                        : Colors.white,
                    border: Border.all(
                      color: DesignColors.primaryBlue,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Obx(
                      () => Text(
                        'Используется',
                        textAlign: TextAlign.center,
                        style: controller.isEnable.value
                            ? const TextStyle(color: Colors.white, fontSize: 16)
                            : Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: controller.isEnable.value
                        ? Colors.white
                        : DesignColors.primaryBlue,
                    border: Border.all(
                      color: DesignColors.primaryBlue,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Obx(
                      () => Text(
                        'Не используется',
                        textAlign: TextAlign.center,
                        style: controller.isEnable.value
                            ? Theme.of(context).textTheme.labelMedium
                            : const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
