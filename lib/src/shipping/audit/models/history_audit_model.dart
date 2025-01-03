///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class HistoryAuditModel {
  String action;
  String lot;
  String containerDate;
  String itemCode;
  String legacy;
  String description;
  String location;
  String palletID;
  String znoe;
  String weight;
  String boxID;
  String createdBy;
  String createDate;
  String fulFilledQty;


  HistoryAuditModel({
    required this.fulFilledQty,
    required this.itemCode,
    required this.legacy,
    required this.palletID,
    required this.weight,
    required this.boxID,
    required this.createdBy,
    required this.createDate,
    required this.znoe,
    required this.containerDate,
    required this.lot,
    required this.description,
    required this.action,
    required this.location,
  });

  factory HistoryAuditModel.fromJson(List<dynamic> json) {
    return HistoryAuditModel(
      action: json[28]?.toString() ?? '',
      fulFilledQty: json[4]?.toString() ?? '',
      itemCode: json[2]?.toString() ?? '',
      legacy: json[14]?.toString() ?? '',
      palletID: json[0]?.toString() ?? '',
      weight: json[15]?.toString() ?? '',
      boxID: json[6]?.toString() ?? '',
      createdBy: json[7]?.toString() ?? '',
      createDate: json[8]?.toString() ?? '',
      znoe: json[12]?.toString() ?? '',
      containerDate: json[26]?.toString() ?? '',
      lot: json[23]?.toString() ?? '',
      description: json[3]?.toString() ?? '',
      location: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fulFilledQty'] = fulFilledQty;
    data['itemCode'] = itemCode;
    data['legacy'] = legacy;
    data['palletID'] = palletID;
    data['weight'] = weight;
    data['boxID'] = boxID;
    data['createdBy'] = createdBy;
    data['createDate'] = createDate;
    data['znoe'] = znoe;
    data['containerDate'] = containerDate;
    data['lot'] = lot;
    data['description'] = description;
    data['action'] = action;
    data['location'] = location;
    return data;
  }
}
