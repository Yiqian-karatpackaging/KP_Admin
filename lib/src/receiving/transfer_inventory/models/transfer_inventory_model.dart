///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class TransferInventoryModel {
  String to;
  String itemCode;
  String legacyItem;
  String nsOnHand;
  String quantity;
  String fromWH;
  String toWH;
  String shipDate;
  String auditCompletedDate;
  String etaWarehouse;
  String totalQty;

  TransferInventoryModel({
    required this.itemCode,
    required this.legacyItem,
    required this.toWH,
    required this.auditCompletedDate,
    required this.to,
    required this.etaWarehouse,
    required this.shipDate,
    required this.fromWH,
    required this.nsOnHand,
    required this.quantity,
    required this.totalQty,
  });

  factory TransferInventoryModel.fromJson(List<dynamic> json) {
    return TransferInventoryModel(
      itemCode: json[2]?.toString() ?? '',
      legacyItem: json[2]?.toString() ?? '',
      toWH: json[10]?.toString() ?? '',
      auditCompletedDate: json[10]?.toString() ?? '',
      to: json[10]?.toString() ?? '',
      etaWarehouse: json[10]?.toString() ?? '',
      shipDate: json[10]?.toString() ?? '',
      fromWH: json[10]?.toString() ?? '',
      nsOnHand: json[10]?.toString() ?? '',
      quantity: json[10]?.toString() ?? '',
      totalQty: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['toWH'] = toWH;
    data['auditCompletedDate'] = auditCompletedDate;
    data['to'] = to;
    data['etaWarehouse'] = etaWarehouse;
    data['shipDate'] = shipDate;
    data['fromWH'] = fromWH;
    data['nsOnHand'] = nsOnHand;
    data['quantity'] = quantity;
    data['totalQty'] = totalQty;
    return data;
  }
}
