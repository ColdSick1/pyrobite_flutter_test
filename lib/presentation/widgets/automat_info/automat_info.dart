import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/automat_info/row_info.dart';
import '../../design/colors.dart';
import 'package:test_app/domain/model/trade_machine/trade_machine_data.dart';

class AutomatInfo extends StatelessWidget {
  const AutomatInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: null,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tradeMachineData.serialNumber,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            height: 32 / 24,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    if (tradeMachineData.isWorking)
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: DesignColors.indicatorGreen,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Работает',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      )
                    else
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: DesignColors.indicatorRed,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Не работает',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      tradeMachineData.location,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(),
              const SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 20, right: 16),
                child: Column(
                  children: [
                    RowInfo(
                      'Тип Шины',
                      tradeMachineData.typeOfBus,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RowInfo(
                      'Уровень сигнала',
                      tradeMachineData.signalLevel,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RowInfo(
                      'Идентификатор',
                      tradeMachineData.id,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RowInfo('Модем', tradeMachineData.modem),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Тип шины',
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //     Text(
              //       tradeMachineData.typeOfBus,
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Уровень сигнала',
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //     Text(
              //       tradeMachineData.signalLevel,
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Идентификатор',
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //     Text(
              //       tradeMachineData.id,
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Модем',
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //     Text(
              //       tradeMachineData.modem,
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Text(
            tradeMachineData.machineType,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
