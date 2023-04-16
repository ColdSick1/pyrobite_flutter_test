import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

class TopElement extends StatelessWidget {
  const TopElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Загрузка',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(height: 32 / 24),
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                size: 36,
                color: DesignColors.primaryDarkColor,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(23, 16, 16, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: DesignColors.indicatorGreen.withOpacity(0.08),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.check,
                color: DesignColors.indicatorGreen,
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                child: Text(
                  'Изменения от 12.07.2021, 12:30 применены успешно',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(height: 24 / 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
