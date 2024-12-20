///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CancelOrdersReviewModel {
  String warehouse;
  String so;
  String quantity;
  String itemCode;
  String legacyItem;

  CancelOrdersReviewModel({
    required this.warehouse,
    required this.itemCode,
    required this.legacyItem,
    required this.so,
    required this.quantity,
  });

  factory CancelOrdersReviewModel.fromJson(List<dynamic> json) {
    return CancelOrdersReviewModel(
      warehouse: json[28]?.toString() ?? '',
      itemCode: json[18]?.toString() ?? '',
      legacyItem: json[18]?.toString() ?? '',
      so: json[18]?.toString() ?? '',
      quantity: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['warehouse'] = warehouse;
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['so'] = so;
    data['quantity'] = quantity;
    return data;
  }
}
