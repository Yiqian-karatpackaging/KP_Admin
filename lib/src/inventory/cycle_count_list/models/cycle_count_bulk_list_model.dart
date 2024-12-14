///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CycleCountBulkListModel {
  String bin;
  String verifiedDate;
  String area;
  String itemCode;
  String legacyItem;
  String batchCreatedDate;
  String verifiedQTY;
  String currentQTY;
  String itemCategory;
  String cycleCountID;
  String verifiedBy;
  String lpn;
  String warehouse;
  String type;


  CycleCountBulkListModel({
    required this.currentQTY,
    required this.itemCode,
    required this.legacyItem,
    required this.itemCategory,
    required this.cycleCountID,
    required this.area,
    required this.batchCreatedDate,
    required this.verifiedQTY,
    required this.bin,
    required this.verifiedDate,
    required this.verifiedBy,
    required this.lpn,
    required this.warehouse,
    required this.type,
  });

  factory CycleCountBulkListModel.fromJson(List<dynamic> json) {
    return CycleCountBulkListModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[14]?.toString() ?? '',
      bin: json[8]?.toString() ?? '',
      verifiedDate: json[3]?.toString() ?? '',
      area: json[11]?.toString() ?? '',
      batchCreatedDate: json[29]?.toString() ?? '',
      verifiedQTY: json[30]?.toString() ?? '',
      currentQTY: json[31]?.toString() ?? '',
      itemCategory: json[4]?.toString() ?? '',
      cycleCountID: json[32]?.toString() ?? '',
      verifiedBy: json[6]?.toString() ?? '',
      lpn: json[6]?.toString() ?? '',
      warehouse: json[6]?.toString() ?? '',
      type: json[6]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['currentQTY'] = currentQTY;
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['itemCategory'] = itemCategory;
    data['cycleCountID'] = cycleCountID;
    data['area'] = area;
    data['batchCreatedDate'] = batchCreatedDate;
    data['verifiedQTY'] = verifiedQTY;
    data['bin'] = bin;
    data['verifiedDate'] = verifiedDate;
    data['lpn'] = lpn;
    data['warehouse'] = warehouse;
    data['type'] = type;
    data['verifiedBy'] = verifiedBy;
    return data;
  }
}