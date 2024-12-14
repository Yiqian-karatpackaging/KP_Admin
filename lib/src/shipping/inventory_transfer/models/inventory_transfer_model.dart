///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class InventoryTransferModel {
  String lpn;
  String fromWH;
  String fromBin;
  String toWH;
  String toBin;
  String itemCode;
  String legacyCode;
  String qty;
  String description;
  String createDate;
  String createdBy;
  String inventoryTransfer;

  InventoryTransferModel({
    required this.fromWH,
    required this.fromBin,
    required this.lpn,
    required this.toWH,
    required this.toBin,
    required this.itemCode,
    required this.legacyCode,
    required this.qty,
    required this.description,
    required this.createDate,
    required this.createdBy,
    required this.inventoryTransfer,
  });

  factory InventoryTransferModel.fromJson(List<dynamic> json) {
    return InventoryTransferModel(
      fromWH: json[11]?.toString() ?? '',
      fromBin: json[3]?.toString() ?? '',
      lpn: json[10]?.toString() ?? '',
      toWH: json[2]?.toString() ?? '',
      toBin: json[8]?.toString() ?? '',
      itemCode: json[8]?.toString() ?? '',
      legacyCode: json[8]?.toString() ?? '',
      qty: json[8]?.toString() ?? '',
      description: json[8]?.toString() ?? '',
      createDate: json[8]?.toString() ?? '',
      createdBy: json[8]?.toString() ?? '',
      inventoryTransfer: json[8]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fromWH'] = fromWH;
    data['fromBin'] = fromBin;
    data['lpn'] = lpn;
    data['toWH'] = toWH;
    data['toBin'] = toBin;
    data['itemCode'] = itemCode;
    data['legacyCode'] = legacyCode;
    data['qty'] = qty;
    data['description'] = description;
    data['createDate'] = createDate;
    data['createdBy'] = createdBy;
    data['inventoryTransfer'] = inventoryTransfer;
    return data;
  }
}
