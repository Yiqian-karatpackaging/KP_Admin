///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ToReceiveScanItemModel {
  String itemCode;
  String legacyItem;
  String bal;
  String units;
  String onHandQty;
  String ordQty;
  String rcvdQty;
  String nsRcvdQty;
  String ordCase;
  String fullPallet;
  String qtyPallet;
  String partialPallet;
  String description;
  String upcCode;

  ToReceiveScanItemModel({
    required this.upcCode,
    required this.legacyItem,
    required this.bal,
    required this.partialPallet,
    required this.rcvdQty,
    required this.qtyPallet,
    required this.ordCase,
    required this.itemCode,
    required this.description,
    required this.fullPallet,
    required this.nsRcvdQty,
    required this.ordQty,
    required this.units,
    required this.onHandQty,
  });

  factory ToReceiveScanItemModel.fromJson(List<dynamic> json) {
    return ToReceiveScanItemModel(
      legacyItem: json[1]?.toString() ?? '',
      bal: json[2]?.toString() ?? '',
      upcCode: json[3]?.toString() ?? '',
      partialPallet: json[5]?.toString() ?? '',
      rcvdQty: json[10]?.toString() ?? '',
      qtyPallet: json[10]?.toString() ?? '',
      ordCase: json[10]?.toString() ?? '',
      itemCode: json[10]?.toString() ?? '',
      description: json[10]?.toString() ?? '',
      fullPallet: json[10]?.toString() ?? '',
      nsRcvdQty: json[10]?.toString() ?? '',
      ordQty: json[10]?.toString() ?? '',
      units: json[10]?.toString() ?? '',
      onHandQty: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['upcCode'] = upcCode;
    data['legacyItem'] = legacyItem;
    data['bal'] = bal;
    data['partialPallet'] = partialPallet;
    data['rcvdQty'] = rcvdQty;
    data['qtyPallet'] = qtyPallet;
    data['ordCase'] = ordCase;
    data['itemCode'] = itemCode;
    data['description'] = description;
    data['fullPallet'] = fullPallet;
    data['nsRcvdQty'] = nsRcvdQty;
    data['ordQty'] = ordQty;
    data['units'] = units;
    data['onHandQty'] = onHandQty;
    return data;
  }
}
