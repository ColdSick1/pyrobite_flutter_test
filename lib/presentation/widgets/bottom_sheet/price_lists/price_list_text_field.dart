import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/price_list_controller.dart';

import 'delete_icon.dart';
import 'text_field_row.dart';

class PriceListsTextFields extends StatelessWidget {
  const PriceListsTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PriceListContoller>(builder: (controller) {
      if (controller.textModelData.isEmpty) {
        return const Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Text('Здесь пока пусто'),
          ),
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text('#'),
                SizedBox(
                  width: 67,
                ),
                Text('Цена'),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            // ignore: prefer_const_constructors
            Column(
              children: [
                ...controller.textModelData.mapIndexed(
                  (index, e) => Row(
                    children: [
                      SizedBox(
                        width: 56,
                        height: 40,
                        child: TextFieldRow(
                          initialValue: e.id,
                          onChange: (text) {
                            controller.editId(index, text);
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        width: 104,
                        height: 40,
                        child: TextFieldRow(
                          initialValue: e.price,
                          onChange: (text) {
                            controller.editPrice(index, text);
                          },
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                      DeleteIcon(index),
                      const SizedBox(
                        height: 48,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        );
      }
    });
  }
}
