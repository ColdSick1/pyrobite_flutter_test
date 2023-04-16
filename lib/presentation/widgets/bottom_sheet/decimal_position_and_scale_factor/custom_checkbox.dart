import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/checkbox_contoller.dart';
import 'package:test_app/presentation/design/colors.dart';

class CustomCheckbox extends StatelessWidget {
  final controller = Get.find<CheckboxContoller>();
  CustomCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.switcherCheckbox();
      },
      child: Row(
        children: [
          Obx(
            () => Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: DesignColors.primaryDarkColor,
                ),
              ),
              child: controller.isEnable.value
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: DesignColors.primaryDarkColor,
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 24,
                      width: 24,
                    ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            'Включить звук',
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
