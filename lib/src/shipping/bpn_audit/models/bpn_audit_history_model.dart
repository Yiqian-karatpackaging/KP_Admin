///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BPNHistoryAuditModel {
  String license;
  String itemCode;
  String description;
  String location;
  String fulFilledQty;
  String palletID;
  String boxID;
  String createdBy;
  String createDate;

  BPNHistoryAuditModel({
    required this.license,
    required this.fulFilledQty,
    required this.palletID,
    required this.itemCode,
    required this.boxID,
    required this.createdBy,
    required this.createDate,
    required this.description,
    required this.location,
  });

  factory BPNHistoryAuditModel.fromJson(List<dynamic> json) {
    return BPNHistoryAuditModel(
      license: json[1]?.toString() ?? '',
      fulFilledQty: json[42]?.toString() ?? '',
      palletID: json[0]?.toString() ?? '',
      itemCode: json[2]?.toString() ?? '',
      boxID: json[22]?.toString() ?? '',
      createdBy: json[29]?.toString() ?? '',
      createDate: json[0]?.toString() ?? '',
      description: json[7]?.toString() ?? '',
      location: json[33]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['license'] = license;
    data['fulFilledQty'] = fulFilledQty;
    data['palletID'] = palletID;
    data['itemCode'] = itemCode;
    data['boxID'] = boxID;
    data['createdBy'] = createdBy;
    data['createDate'] = createDate;
    data['description'] = description;
    data['location'] = location;
    return data;
  }
}