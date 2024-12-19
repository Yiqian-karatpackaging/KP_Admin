///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BulkPalletMovementModel {
  String scanId;
  String quantity;
  String itemName;
  String legacyItem;

  BulkPalletMovementModel({
    required this.scanId,
    required this.itemName,
    required this.legacyItem,
    required this.quantity,
  });

  factory BulkPalletMovementModel.fromJson(List<dynamic> json) {
    return BulkPalletMovementModel(
      scanId: json[28]?.toString() ?? '',
      itemName: json[18]?.toString() ?? '',
      legacyItem: json[18]?.toString() ?? '',
      quantity: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['scanId'] = scanId;
    data['itemName'] = itemName;
    data['legacyItem'] = legacyItem;
    data['quantity'] = quantity;
    return data;
  }
}
