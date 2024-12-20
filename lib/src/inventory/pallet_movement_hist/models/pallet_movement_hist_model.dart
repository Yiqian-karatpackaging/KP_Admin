///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class PalletMovementHistModel {
  String scanId;
  String warehouse;
  String previousBin;
  String newBin;
  String currentQty;
  String itemCode;
  String legacyItem;
  String reason;
  String quantity;
  String palletMoveDate;
  String moveEndDate;
  String palletMoveBy;
  String holdStatus;
  String binFrom;
  String binTo;
  String bypassBinUser;
  String type;


  PalletMovementHistModel({
    required this.palletMoveDate,
    required this.itemCode,
    required this.legacyItem,
    required this.moveEndDate,
    required this.holdStatus,
    required this.binFrom,
    required this.binTo,
    required this.warehouse,
    required this.palletMoveBy,
    required this.currentQty,
    required this.previousBin,
    required this.reason,
    required this.quantity,
    required this.scanId,
    required this.newBin,
    required this.bypassBinUser,
    required this.type,
  });

  factory PalletMovementHistModel.fromJson(List<dynamic> json) {
    return PalletMovementHistModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[14]?.toString() ?? '',
      scanId: json[8]?.toString() ?? '',
      warehouse: json[25]?.toString() ?? '',
      previousBin: json[2]?.toString() ?? '',
      newBin: json[3]?.toString() ?? '',
      currentQty: json[11]?.toString() ?? '',
      reason: json[29]?.toString() ?? '',
      quantity: json[30]?.toString() ?? '',
      palletMoveDate: json[31]?.toString() ?? '',
      moveEndDate: json[4]?.toString() ?? '',
      palletMoveBy: json[32]?.toString() ?? '',
      holdStatus: json[38]?.toString() ?? '',
      binFrom: json[18]?.toString() ?? '',
      binTo: json[33]?.toString() ?? '',
      bypassBinUser: json[5]?.toString() ?? '',
      type: json[6]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['palletMoveDate'] = palletMoveDate;
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['moveEndDate'] = moveEndDate;
    data['holdStatus'] = holdStatus;
    data['binFrom'] = binFrom;
    data['binTo'] = binTo;
    data['warehouse'] = warehouse;
    data['palletMoveBy'] = palletMoveBy;
    data['currentQty'] = currentQty;
    data['previousBin'] = previousBin;
    data['reason'] = reason;
    data['quantity'] = quantity;
    data['scanId'] = scanId;
    data['newBin'] = newBin;
    data['bypassBinUser'] = bypassBinUser;
    data['type'] = type;
    return data;
  }
}
