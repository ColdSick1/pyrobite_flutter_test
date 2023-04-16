import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

class FinanceCard extends StatelessWidget {
  final String assetName;
  final String money;
  final String description;

  const FinanceCard({
    super.key,
    required this.assetName,
    required this.description,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: DesignColors.primaryBlue.withOpacity(0.08),
              child: Center(
                child: Image.asset(
                  assetName,
                  width: 25,
                  height: 16,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  money,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
