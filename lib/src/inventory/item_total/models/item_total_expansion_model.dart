///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ItemTotalExpansionModel {
  String scanId;
  String binLocation;
  String countryOfOrigin;
  String holdStatus;
  String expirationDate;
  String lastEditDate;
  String lastEditBy;
  String receivedDateTime;
  String createdBy;
  String receivedQty;
  String currentQty;
  String memo;
  String receivedBy;
  String warehouse;
  String lot;
  String soto;
  String customerHold;


  ItemTotalExpansionModel({
    required this.receivedDateTime,
    required this.holdStatus,
    required this.expirationDate,
    required this.createdBy,
    required this.receivedQty,
    required this.countryOfOrigin,
    required this.lastEditDate,
    required this.lastEditBy,
    required this.scanId,
    required this.binLocation,
    required this.currentQty,
    required this.memo,
    required this.receivedBy,
    required this.warehouse,
    required this.lot,
    required this.soto,
    required this.customerHold,
  });

  factory ItemTotalExpansionModel.fromJson(List<dynamic> json) {
    return ItemTotalExpansionModel(
      holdStatus: json[1]?.toString() ?? '',
      expirationDate: json[14]?.toString() ?? '',
      scanId: json[8]?.toString() ?? '',
      binLocation: json[3]?.toString() ?? '',
      countryOfOrigin: json[11]?.toString() ?? '',
      lastEditDate: json[29]?.toString() ?? '',
      lastEditBy: json[30]?.toString() ?? '',
      receivedDateTime: json[31]?.toString() ?? '',
      createdBy: json[4]?.toString() ?? '',
      receivedQty: json[32]?.toString() ?? '',
      currentQty: json[6]?.toString() ?? '',
      memo: json[6]?.toString() ?? '',
      receivedBy: json[6]?.toString() ?? '',
      warehouse: json[6]?.toString() ?? '',
      lot: json[6]?.toString() ?? '',
      soto: json[6]?.toString() ?? '',
      customerHold: json[6]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['receivedDateTime'] = receivedDateTime;
    data['holdStatus'] = holdStatus;
    data['expirationDate'] = expirationDate;
    data['createdBy'] = createdBy;
    data['receivedQty'] = receivedQty;
    data['countryOfOrigin'] = countryOfOrigin;
    data['lastEditDate'] = lastEditDate;
    data['lastEditBy'] = lastEditBy;
    data['scanId'] = scanId;
    data['binLocation'] = binLocation;
    data['memo'] = memo;
    data['receivedBy'] = receivedBy;
    data['warehouse'] = warehouse;
    data['lot'] = lot;
    data['soto'] = soto;
    data['customerHold'] = customerHold;
    return data;
  }
}
