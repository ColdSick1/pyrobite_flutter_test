import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/price_list_controller.dart';
import 'package:test_app/domain/model/text_fiel_model.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/price_lists/price_list_text_field.dart';
import 'package:test_app/presentation/widgets/loader_level/loader_button.dart';
import 'package:test_app/presentation/widgets/widget_layout.dart';

class PriceLists extends StatelessWidget {
  final TextModel emptyList = TextModel(id: '', price: '');
  final controller = Get.find<PriceListContoller>();
  PriceLists({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLayout(
      'Прайс Листы',
      const SizedBox(height: 8),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Последняя синхронизация с модемом',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 16 / 14),
              ),
              Text(
                '1 час назад',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 16 / 14),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const PriceListsTextFields(),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
              onTap: () {
                controller.addElement();
              },
              child: const LoaderButton(child: 'Добавить строку'))
        ],
      ),
    );
  }
}
