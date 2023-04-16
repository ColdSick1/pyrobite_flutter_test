import 'package:flutter/material.dart';
import 'package:test_app/domain/model/finance_model/finance_model_data.dart';
import 'package:test_app/presentation/widgets/finance/finance_card.dart';
import 'package:test_app/presentation/widgets/widget_layout.dart';

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLayout(
      'Финансы',
      const SizedBox(
        height: 16,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: financeModelData
              .map((e) => FinanceCard(
                  assetName: e.icon,
                  description: e.description,
                  money: e.money))
              .toList(),
        ),
      ),
    );
  }
}
