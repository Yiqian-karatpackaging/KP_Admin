///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BPNAuditSupportDocsModel {
  String itemName;
  String fileName;
  String addedDate;
  String legacyItem;
  String memo;
  String palletID;
  String boxID;
  String createdBy;
  String createDate;

  BPNAuditSupportDocsModel({
    required this.itemName,
    required this.memo,
    required this.palletID,
    required this.fileName,
    required this.boxID,
    required this.createdBy,
    required this.createDate,
    required this.addedDate,
    required this.legacyItem,
  });

  factory BPNAuditSupportDocsModel.fromJson(List<dynamic> json) {
    return BPNAuditSupportDocsModel(
      itemName: json[1]?.toString() ?? '',
      memo: json[42]?.toString() ?? '',
      palletID: json[0]?.toString() ?? '',
      fileName: json[2]?.toString() ?? '',
      boxID: json[22]?.toString() ?? '',
      createdBy: json[29]?.toString() ?? '',
      createDate: json[0]?.toString() ?? '',
      addedDate: json[7]?.toString() ?? '',
      legacyItem: json[33]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['itemName'] = itemName;
    data['memo'] = memo;
    data['palletID'] = palletID;
    data['fileName'] = fileName;
    data['boxID'] = boxID;
    data['createdBy'] = createdBy;
    data['createDate'] = createDate;
    data['addedDate'] = addedDate;
    data['legacyItem'] = legacyItem;
    return data;
  }
}
