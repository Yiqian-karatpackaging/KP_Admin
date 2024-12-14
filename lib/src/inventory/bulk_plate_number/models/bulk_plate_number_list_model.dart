///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BulkPlateNumberListModel {
  String bin;
  String itemCode;
  String legacyItem;
  String description;
  String soTO;
  String memo;
  String lpnBin;
  String currentQTY;
  String lpn;
  String warehouse;
  String bpn;


  BulkPlateNumberListModel({
    required this.memo,
    required this.itemCode,
    required this.legacyItem,
    required this.lpnBin,
    required this.currentQTY,
    required this.description,
    required this.soTO,
    required this.bin,
    required this.lpn,
    required this.warehouse,
    required this.bpn,
  });

  factory BulkPlateNumberListModel.fromJson(List<dynamic> json) {
    return BulkPlateNumberListModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[14]?.toString() ?? '',
      bin: json[8]?.toString() ?? '',
      description: json[29]?.toString() ?? '',
      soTO: json[30]?.toString() ?? '',
      memo: json[31]?.toString() ?? '',
      lpnBin: json[4]?.toString() ?? '',
      currentQTY: json[32]?.toString() ?? '',
      lpn: json[6]?.toString() ?? '',
      warehouse: json[6]?.toString() ?? '',
      bpn: json[6]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['memo'] = memo;
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['lpnBin'] = lpnBin;
    data['currentQTY'] = currentQTY;
    data['description'] = description;
    data['soTO'] = soTO;
    data['bin'] = bin;
    data['lpn'] = lpn;
    data['warehouse'] = warehouse;
    data['bpn'] = bpn;
    return data;
  }
}
