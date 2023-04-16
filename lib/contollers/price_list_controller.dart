import 'package:get/get.dart';
import 'package:test_app/domain/model/text_fiel_model.dart';

class PriceListContoller extends GetxController {
  final List<TextModel> textModelData = [
    TextModel(id: '2', price: '50'),
  ];

  void addElement() {
    textModelData.add(TextModel(id: '', price: ''));
    update();
  }

  void removeElement(int index) {
    textModelData.removeAt(index);
    update();
  }

  List<TextModel> getUnemptyElements() {
    return textModelData
        .where(
          (element) => element.id.isNotEmpty && element.price.isNotEmpty,
        )
        .toList();
  }

  void editId(int index, String newId) {
    textModelData[index] = textModelData[index].copyWith(id: newId);
  }

  void editPrice(int index, String newPrice) {
    textModelData[index] = textModelData[index].copyWith(price: newPrice);
  }

  void onSaved(List<TextModel> newList) {
    textModelData
        .removeWhere((element) => element.id == '' || element.price == '');
    update();
  }
}
