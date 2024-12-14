///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class LPNCondenseExpansionModel {
  String bin;
  String quantity;
  String hold;
  String reason;
  String updateDate;
  String updateBy;

  LPNCondenseExpansionModel({
    required this.hold,
    required this.reason,
    required this.quantity,
    required this.updateDate,
    required this.updateBy,
    required this.bin,
  });

  factory LPNCondenseExpansionModel.fromJson(List<dynamic> json) {
    return LPNCondenseExpansionModel(
      hold: json[1]?.toString() ?? '',
      reason: json[14]?.toString() ?? '',
      bin: json[3]?.toString() ?? '',
      quantity: json[11]?.toString() ?? '',
      updateDate: json[29]?.toString() ?? '',
      updateBy: json[30]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['hold'] = hold;
    data['reason'] = reason;
    data['quantity'] = quantity;
    data['updateDate'] = updateDate;
    data['updateBy'] = updateBy;
    data['bin'] = bin;
    return data;
  }
}
