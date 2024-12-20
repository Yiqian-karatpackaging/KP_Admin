///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class HistorySupportDocsModel {
  String itemName;
  String fileName;
  String memo;
  String addedBy;
  String addedDate;


  HistorySupportDocsModel({
    required this.memo,
    required this.addedBy,
    required this.addedDate,
    required this.fileName,
    required this.itemName,
  });

  factory HistorySupportDocsModel.fromJson(List<dynamic> json) {
    return HistorySupportDocsModel(
      itemName: json[2]?.toString() ?? '',
      memo: json[3]?.toString() ?? '',
      addedBy: json[4]?.toString() ?? '',
      addedDate: json[10]?.toString() ?? '',
      fileName: json[12]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['memo'] = memo;
    data['addedBy'] = addedBy;
    data['addedDate'] = addedDate;
    data['fileName'] = fileName;
    data['itemName'] = itemName;
    return data;
  }
}
