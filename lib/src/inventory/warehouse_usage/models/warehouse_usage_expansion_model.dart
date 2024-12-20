///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class WarehouseUsageExpansionModel {
  String lpn;
  String bin;
  String createdBy;
  String createdDate;
  String qty;


  WarehouseUsageExpansionModel({
    required this.bin,
    required this.lpn,
    required this.createdBy,
    required this.qty,
    required this.createdDate,
  });

  factory WarehouseUsageExpansionModel.fromJson(List<dynamic> json) {
    return WarehouseUsageExpansionModel(
      lpn: json[28]?.toString() ?? '',
      bin: json[14]?.toString() ?? '',
      createdDate: json[26]?.toString() ?? '',
      createdBy: json[18]?.toString() ?? '',
      qty: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bin'] = bin;
    data['lpn'] = lpn;
    data['createdDate'] = createdDate;
    data['createdBy'] = createdBy;
    data['qty'] = qty;
    return data;
  }
}
