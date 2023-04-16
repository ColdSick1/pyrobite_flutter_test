import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

class EventCard extends StatelessWidget {
  final String time;
  final String event;
  final String machine;
  const EventCard(this.time, this.event, this.machine, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: DesignColors.indicatorRed,
                width: 2,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                time,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    if (machine != '')
                      Text(
                        machine,
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),
              IconButton(
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right,
                  color: DesignColors.greyText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
