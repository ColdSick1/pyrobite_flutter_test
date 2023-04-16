import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/contollers/checkbox_contoller.dart';
import 'package:test_app/contollers/master_mode_controller.dart';
import 'package:test_app/contollers/price_list_controller.dart';
import 'package:test_app/presentation/design/colors.dart';
import 'package:test_app/presentation/widgets/bottom_sheet/custom_bottom_sheet.dart';
import 'package:test_app/presentation/widgets/finance/finance.dart';
import '../widgets/automat_info/automat_info.dart';
import 'package:test_app/presentation/widgets/machine_events/events.dart';
import 'package:test_app/presentation/widgets/loader_level/loader_level.dart';

class MainScreen extends StatelessWidget {
  final controllerPriceList = Get.put(PriceListContoller());
  final controllerCheckbox = Get.put(CheckboxContoller());
  final controllerMasterMode = Get.put(MasterModeController());
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Theme.of(context).canvasColor,
        backgroundColor: Theme.of(context).canvasColor,
        leading: const BackButton(
          color: DesignColors.primaryDarkColor,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.9),
                useSafeArea: true,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                )),
                context: context,
                builder: (context) => CustomBottomSheet(),
              );
            },
            icon: const Icon(
              Icons.settings,
              color: DesignColors.primaryDarkColor,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // IconRow(),
          Text(
            'Торговые автоматы',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 24,
          ),
          const AutomatInfo(),
          const SizedBox(
            height: 24,
          ),
          const LoaderLevel(),
          const SizedBox(
            height: 24,
          ),
          const Events(),
          const SizedBox(
            height: 24,
          ),
          const Finance(),
        ],
      ),
    );
  }
}
