import 'package:flutter/material.dart';
import 'package:test_app/domain/model/events_model/events_model_data.dart';
import 'package:test_app/presentation/widgets/loader_level/loader_button.dart';
import 'package:test_app/presentation/widgets/machine_events/event_card.dart';
import 'package:test_app/presentation/widgets/widget_layout.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetLayout(
          'События',
          const SizedBox(
            height: 16,
          ),
          Column(
            children: eventsModelData
                .map(
                  (e) => EventCard(e.time, e.event, e.description),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const LoaderButton(
          child: 'Смотреть еще',
        ),
      ],
    );
  }
}
