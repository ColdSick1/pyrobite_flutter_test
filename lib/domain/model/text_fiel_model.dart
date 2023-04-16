class TextModel {
  final String id;
  final String price;

  TextModel({required this.id, required this.price});

  TextModel copyWith({String? id, String? price}) => TextModel(
        id: id ?? this.id,
        price: price ?? this.price,
      );
}
