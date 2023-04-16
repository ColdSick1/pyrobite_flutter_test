import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/loader_level/loader_button.dart';
import 'package:test_app/presentation/widgets/loader_level/loader_level_box.dart';

class LoaderLevel extends StatefulWidget {
  const LoaderLevel({super.key});

  @override
  State<LoaderLevel> createState() => _LoaderLevelState();
}

class _LoaderLevelState extends State<LoaderLevel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const LoaderLevelBox(percent: 100),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              LoaderButton(child: 'Загрузка'),
              SizedBox(
                height: 16,
              ),
              LoaderButton(child: 'Инвентаризация'),
            ],
          ),
        )
      ],
    );
  }
}
