///
/// Code generated by jsonwarehouseDartModel https://ashamp.github.io/jsonwarehouseDartModel/
///
class ManifestHistoryV2ExpansionModel {
  String itemCode;
  String legacyItem;
  String orderQty;
  String description;
  String action;
  String qtyToReturn;
  String notes;

  ManifestHistoryV2ExpansionModel({
    required this.legacyItem,
    required this.orderQty,
    required this.notes,
    required this.itemCode,
    required this.qtyToReturn,
    required this.description,
    required this.action,
  });

  factory ManifestHistoryV2ExpansionModel.fromJson(List<dynamic> json) {
    return ManifestHistoryV2ExpansionModel(
      legacyItem: json[1]?.toString() ?? '',
      orderQty: json[2]?.toString() ?? '',
      notes: json[10]?.toString() ?? '',
      itemCode: json[10]?.toString() ?? '',
      qtyToReturn: json[10]?.toString() ?? '',
      description: json[10]?.toString() ?? '',
      action: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> warehouseJson() {
    final data = <String, dynamic>{};
    data['legacyItem'] = legacyItem;
    data['orderQty'] = orderQty;
    data['notes'] = notes;
    data['itemCode'] = itemCode;
    data['qtyToReturn'] = qtyToReturn;
    data['description'] = description;
    data['action'] = action;
    return data;
  }
}
