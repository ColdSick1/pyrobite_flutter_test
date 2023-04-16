import 'package:get/get.dart';

class MasterModeController extends GetxController {
  var isEnable = true.obs;

  void switcherMasterMode() {
    isEnable.value = !isEnable.value;
  }
}
