///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ScanHistoryExpansionModel {
  String bin;
  String quantityChange;
  String oldQty;
  String memo;
  String reason;
  String updateBy;
  String updateDate;

  ScanHistoryExpansionModel({
    required this.bin,
    required this.quantityChange,
    required this.oldQty,
    required this.memo,
    required this.reason,
    required this.updateBy,
    required this.updateDate,
  });

  factory ScanHistoryExpansionModel.fromJson(List<dynamic> json) {
    return ScanHistoryExpansionModel(
      bin: json[1]?.toString() ?? '',
      quantityChange: json[2]?.toString() ?? '',
      oldQty: json[3]?.toString() ?? '',
      memo: json[4]?.toString() ?? '',
      reason: json[5]?.toString() ?? '',
      updateBy: json[6]?.toString() ?? '',
      updateDate: json[7]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bin'] = bin;
    data['quantityChange'] = quantityChange;
    data['oldQty'] = oldQty;
    data['memo'] = memo;
    data['reason'] = reason;
    data['updateBy'] = updateBy;
    data['updateDate'] = updateDate;
    return data;
  }
}