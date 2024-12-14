///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SOTOSLogModel {
  String wareHouse;
  String adjustQty;
  String auditQty;
  String wareHouseType;
  String onOrderQty;
  String countQty;
  String filledQty;
  String lpnQty;
  String pickQty;
  String amount;
  String ordQty;
  String legacyItem;
  String wareHouseStatus;
  String customerName;
  String itemCode;
  String salesRep;
  String status;
  String soCode;
  String createDate;
  String shipDate;
  String pickStarted;
  String pickStartedBy;
  String pCompletedDate;
  String pCompletedBy;
  String auditStartDate;
  String auditStartedBy;
  String auditEndDate;
  String auditEndBy;
  String whCheckerNotes;


  SOTOSLogModel({
    required this.adjustQty,
    required this.wareHouse,
    required this.auditQty,
    required this.wareHouseType,
    required this.onOrderQty,
    required this.countQty,
    required this.filledQty,
    required this.lpnQty,
    required this.pickQty,
    required this.amount,
    required this.ordQty,
    required this.legacyItem,
    required this.wareHouseStatus,
    required this.customerName,
    required this.itemCode,
    required this.salesRep,
    required this.status,
    required this.soCode,
    required this.createDate,
    required this.shipDate,
    required this.pickStarted,
    required this.pickStartedBy,
    required this.pCompletedDate,
    required this.pCompletedBy,
    required this.auditStartDate,
    required this.auditStartedBy,
    required this.auditEndDate,
    required this.auditEndBy,
    required this.whCheckerNotes,
  });

  factory SOTOSLogModel.fromJson(List<dynamic> json) {
    return SOTOSLogModel(
      wareHouse: json[1]?.toString() ?? '',
      wareHouseType: json[2]?.toString() ?? '',
      adjustQty: json[3]?.toString() ?? '',
      onOrderQty: json[14]?.toString() ?? '',
      countQty: json[6]?.toString() ?? '',
      filledQty: json[5]?.toString() ?? '',
      lpnQty: json[7]?.toString() ?? '',
      auditQty: json[8]?.toString() ?? '',
      pickQty: json[11]?.toString() ?? '',
      amount: json[10]?.toString() ?? '',
      ordQty: json[10]?.toString() ?? '',
      legacyItem: json[10]?.toString() ?? '',
      wareHouseStatus: json[10]?.toString() ?? '',
      customerName: json[10]?.toString() ?? '',
      itemCode: json[10]?.toString() ?? '',
      salesRep: json[10]?.toString() ?? '',
      status: json[10]?.toString() ?? '',
      soCode: json[10]?.toString() ?? '',
      createDate: json[10]?.toString() ?? '',
      shipDate: json[10]?.toString() ?? '',
      pickStarted: json[10]?.toString() ?? '',
      pickStartedBy: json[10]?.toString() ?? '',
      pCompletedDate: json[10]?.toString() ?? '',
      pCompletedBy: json[10]?.toString() ?? '',
      auditStartDate: json[10]?.toString() ?? '',
      auditStartedBy: json[10]?.toString() ?? '',
      auditEndDate: json[10]?.toString() ?? '',
      auditEndBy: json[10]?.toString() ?? '',
      whCheckerNotes: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['adjustQty'] = adjustQty;
    data['wareHouse'] = wareHouse;
    data['auditQty'] = auditQty;
    data['wareHouseType'] = wareHouseType;
    data['onOrderQty'] = onOrderQty;
    data['countQty'] = countQty;
    data['filledQty'] = filledQty;
    data['lpnQty'] = lpnQty;
    data['pickQty'] = pickQty;
    data['amount'] = amount;
    data['ordQty'] = ordQty;
    data['legacyItem'] = legacyItem;
    data['wareHouseStatus'] = wareHouseStatus;
    data['customerName'] = customerName;
    data['itemCode'] = itemCode;
    data['salesRep'] = salesRep;
    data['status'] = status;
    data['soCode'] = soCode;
    data['createDate'] = createDate;
    data['shipDate'] = shipDate;
    data['pickStarted'] = pickStarted;
    data['pickStartedBy'] = pickStartedBy;
    data['pCompletedDate'] = pCompletedDate;
    data['pCompletedBy'] = pCompletedBy;
    data['auditStartDate'] = auditStartDate;
    data['auditStartedBy'] = auditStartedBy;
    data['auditEndDate'] = auditEndDate;
    data['auditEndBy'] = auditEndBy;
    data['whCheckerNotes'] = whCheckerNotes;
    return data;
  }
}
