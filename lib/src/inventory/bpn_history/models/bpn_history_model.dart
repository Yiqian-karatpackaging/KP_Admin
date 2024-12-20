///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BPNHistoryModel {
  String warehouse;
  String bpnBin;
  String bin;
  String totalQTY;
  String createdBy;
  String createdDate;
  String soTo;
  String memo;


  BPNHistoryModel({
    required this.bin,
    required this.bpnBin,
    required this.createdDate,
    required this.totalQTY,
    required this.soTo,
    required this.warehouse,
    required this.memo,
    required this.createdBy,
  });

  factory BPNHistoryModel.fromJson(List<dynamic> json) {
    return BPNHistoryModel(
      warehouse: json[28]?.toString() ?? '',
      bin: json[14]?.toString() ?? '',
      bpnBin: json[8]?.toString() ?? '',
      createdDate: json[26]?.toString() ?? '',
      totalQTY: json[23]?.toString() ?? '',
      soTo: json[3]?.toString() ?? '',
      memo: json[18]?.toString() ?? '',
      createdBy: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bin'] = bin;
    data['bpnBin'] = bpnBin;
    data['createdDate'] = createdDate;
    data['totalQTY'] = totalQTY;
    data['soTo'] = soTo;
    data['warehouse'] = warehouse;
    data['memo'] = memo;
    data['createdBy'] = createdBy;
    return data;
  }
}
