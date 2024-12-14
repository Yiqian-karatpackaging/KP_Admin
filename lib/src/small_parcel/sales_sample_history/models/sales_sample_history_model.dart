///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SalesSampleHistoryModel {
  String invoice;
  String action;
  String po;
  String customerName;
  String warehouse;
  String shipZipcode;
  String carrier;
  String boxType;
  String trackNo;
  String rate;
  String signatureCost;
  String status;
  String packStartBy;
  String packStartDate;
  String weight;
  String duration;
  String shipToAddress;
  String orderStatus;

  SalesSampleHistoryModel({
    required this.weight,
    required this.shipZipcode,
    required this.trackNo,
    required this.signatureCost,
    required this.status,
    required this.packStartBy,
    required this.packStartDate,
    required this.rate,
    required this.invoice,
    required this.carrier,
    required this.action,
    required this.boxType,
    required this.duration,
    required this.shipToAddress,
    required this.orderStatus,
    required this.warehouse,
    required this.customerName,
    required this.po,
  });

  factory SalesSampleHistoryModel.fromJson(List<dynamic> json) {
    return SalesSampleHistoryModel(
      action: json[28]?.toString() ?? '',
      weight: json[4]?.toString() ?? '',
      shipZipcode: json[14]?.toString() ?? '',
      trackNo: json[0]?.toString() ?? '',
      signatureCost: json[15]?.toString() ?? '',
      status: json[6]?.toString() ?? '',
      packStartBy: json[7]?.toString() ?? '',
      packStartDate: json[8]?.toString() ?? '',
      rate: json[12]?.toString() ?? '',
      invoice: json[26]?.toString() ?? '',
      carrier: json[3]?.toString() ?? '',
      boxType: json[18]?.toString() ?? '',
      duration: json[23]?.toString() ?? '',
      shipToAddress: json[3]?.toString() ?? '',
      orderStatus: json[18]?.toString() ?? '',
      warehouse: json[18]?.toString() ?? '',
      customerName: json[18]?.toString() ?? '',
      po: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['weight'] = weight;
    data['shipZipcode'] = shipZipcode;
    data['trackNo'] = trackNo;
    data['signatureCost'] = signatureCost;
    data['status'] = status;
    data['packStartBy'] = packStartBy;
    data['packStartDate'] = packStartDate;
    data['rate'] = rate;
    data['invoice'] = invoice;
    data['carrier'] = carrier;
    data['action'] = action;
    data['boxType'] = boxType;
    data['duration'] = duration;
    data['shipToAddress'] = shipToAddress;
    data['orderStatus'] = orderStatus;
    data['warehouse'] = warehouse;
    data['customerName'] = customerName;
    data['po'] = po;
    return data;
  }
}
