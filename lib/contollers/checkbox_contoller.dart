import 'package:get/get.dart';

class CheckboxContoller extends GetxController {
  var isEnable = true.obs;

  void switcherCheckbox() {
    isEnable.value = !isEnable.value;
  }
}
