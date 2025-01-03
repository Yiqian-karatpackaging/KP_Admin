///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ReceiveScanSupportDocsModel {
  String itemName;
  String fileName;
  String memo;
  String addedBy;
  String addedDate;

  ReceiveScanSupportDocsModel({
    required this.fileName,
    required this.memo,
    required this.itemName,
    required this.addedDate,
    required this.addedBy,
  });

  factory ReceiveScanSupportDocsModel.fromJson(List<dynamic> json) {
    return ReceiveScanSupportDocsModel(
      fileName: json[1]?.toString() ?? '',
      memo: json[2]?.toString() ?? '',
      itemName: json[10]?.toString() ?? '',
      addedDate: json[10]?.toString() ?? '',
      addedBy: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fileName'] = fileName;
    data['memo'] = memo;
    data['itemName'] = itemName;
    data['addedDate'] = addedDate;
    data['addedBy'] = addedBy;
    return data;
  }
}
