///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CycleCountHistoryModel {
  String lpn;
  String cycleCountID;
  String assignUser;
  String bin;
  String originalQty;
  String itemCode;
  String legacyItem;
  String pickQty;
  String recountQty;
  String adjustQty;
  String createBy;
  String createDate;
  String verifiedBy;
  String verifiedDate;
  String recountBy;
  String adjustNum;
  String recountDate;
  String verifiedQty;
  String adjustedBy;
  String adjustedDate;
  String isPrecount;
  String futureCountDate;


  CycleCountHistoryModel({
    required this.adjustQty,
    required this.itemCode,
    required this.legacyItem,
    required this.createBy,
    required this.verifiedBy,
    required this.verifiedDate,
    required this.recountBy,
    required this.cycleCountID,
    required this.createDate,
    required this.originalQty,
    required this.assignUser,
    required this.pickQty,
    required this.recountQty,
    required this.lpn,
    required this.bin,
    required this.adjustNum,
    required this.recountDate,
    required this.verifiedQty,
    required this.adjustedBy,
    required this.adjustedDate,
    required this.isPrecount,
    required this.futureCountDate,
  });

  factory CycleCountHistoryModel.fromJson(List<dynamic> json) {
    return CycleCountHistoryModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[14]?.toString() ?? '',
      lpn: json[8]?.toString() ?? '',
      cycleCountID: json[25]?.toString() ?? '',
      assignUser: json[2]?.toString() ?? '',
      bin: json[3]?.toString() ?? '',
      originalQty: json[11]?.toString() ?? '',
      pickQty: json[29]?.toString() ?? '',
      recountQty: json[30]?.toString() ?? '',
      adjustQty: json[31]?.toString() ?? '',
      createBy: json[4]?.toString() ?? '',
      createDate: json[32]?.toString() ?? '',
      verifiedBy: json[38]?.toString() ?? '',
      verifiedDate: json[18]?.toString() ?? '',
      recountBy: json[33]?.toString() ?? '',
      adjustNum: json[5]?.toString() ?? '',
      recountDate: json[6]?.toString() ?? '',
      verifiedQty: json[6]?.toString() ?? '',
      adjustedBy: json[6]?.toString() ?? '',
      adjustedDate: json[6]?.toString() ?? '',
      isPrecount: json[6]?.toString() ?? '',
      futureCountDate: json[6]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['adjustQty'] = adjustQty;
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['createBy'] = createBy;
    data['verifiedBy'] = verifiedBy;
    data['verifiedDate'] = verifiedDate;
    data['recountBy'] = recountBy;
    data['cycleCountID'] = cycleCountID;
    data['createDate'] = createDate;
    data['originalQty'] = originalQty;
    data['assignUser'] = assignUser;
    data['pickQty'] = pickQty;
    data['recountQty'] = recountQty;
    data['lpn'] = lpn;
    data['bin'] = bin;
    data['adjustNum'] = adjustNum;
    data['recountDate'] = recountDate;
    data['verifiedQty'] = verifiedQty;
    data['adjustedBy'] = adjustedBy;
    data['adjustedDate'] = adjustedDate;
    data['isPrecount'] = isPrecount;
    data['futureCountDate'] = futureCountDate;
    return data;
  }
}
