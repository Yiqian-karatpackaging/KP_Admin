///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SOPickHistoryModel {
  String itemCode;
  String wh;
  String so;
  String legacyItem;
  String origin;
  String lpn;
  String qty;
  String bin;
  String type;
  String pickedBy;
  String pickedDate;


  SOPickHistoryModel({
    required this.wh,
    required this.itemCode,
    required this.so,
    required this.legacyItem,
    required this.origin,
    required this.lpn,
    required this.qty,
    required this.bin,
    required this.type,
    required this.pickedBy,
    required this.pickedDate,
  });

  factory SOPickHistoryModel.fromJson(List<dynamic> json) {
    return SOPickHistoryModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[2]?.toString() ?? '',
      wh: json[3]?.toString() ?? '',
      origin: json[14]?.toString() ?? '',
      lpn: json[4]?.toString() ?? '',
      qty: json[6]?.toString() ?? '',
      bin: json[5]?.toString() ?? '',
      type: json[7]?.toString() ?? '',
      so: json[8]?.toString() ?? '',
      pickedBy: json[11]?.toString() ?? '',
      pickedDate: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['wh'] = wh;
    data['itemCode'] = itemCode;
    data['so'] = so;
    data['legacyItem'] = legacyItem;
    data['origin'] = origin;
    data['lpn'] = lpn;
    data['qty'] = qty;
    data['bin'] = bin;
    data['type'] = type;
    data['pickedBy'] = pickedBy;
    data['pickedDate'] = pickedDate;
    return data;
  }
}