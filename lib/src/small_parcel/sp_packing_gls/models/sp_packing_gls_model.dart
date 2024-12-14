///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SPPackingGlsModel {
  String itemCode;
  String legacyItem;
  String location;
  String description;
  String ordQty;
  String pickQty;
  String nsFulfilledQty;
  String putQty;
  
  String type;
  String boxNo;
  String weight;
  String carrier;
  String trackCode;
  String signature;
  String insuranceAmount;

  SPPackingGlsModel({
    required this.pickQty,
    required this.itemCode,
    required this.carrier,
    required this.nsFulfilledQty,
    required this.putQty,
    required this.trackCode,
    required this.type,
    required this.legacyItem,
    required this.boxNo,
    required this.ordQty,
    required this.signature,
    required this.insuranceAmount,
    required this.location,
    required this.description,
    required this.weight,
  });

  factory SPPackingGlsModel.fromJson(List<dynamic> json) {
    return SPPackingGlsModel(
      boxNo: json[28]?.toString() ?? '',
      pickQty: json[4]?.toString() ?? '',
      itemCode: json[14]?.toString() ?? '',
      carrier: json[0]?.toString() ?? '',
      nsFulfilledQty: json[6]?.toString() ?? '',
      putQty: json[7]?.toString() ?? '',
      trackCode: json[12]?.toString() ?? '',
      type: json[26]?.toString() ?? '',
      legacyItem: json[3]?.toString() ?? '',
      ordQty: json[18]?.toString() ?? '',
      signature: json[3]?.toString() ?? '',
      insuranceAmount: json[18]?.toString() ?? '',
      location: json[18]?.toString() ?? '',
      description: json[18]?.toString() ?? '',
      weight: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['pickQty'] = pickQty;
    data['itemCode'] = itemCode;
    data['carrier'] = carrier;
    data['nsFulfilledQty'] = nsFulfilledQty;
    data['putQty'] = putQty;
    data['trackCode'] = trackCode;
    data['type'] = type;
    data['legacyItem'] = legacyItem;
    data['boxNo'] = boxNo;
    data['ordQty'] = ordQty;
    data['signature'] = signature;
    data['insuranceAmount'] = insuranceAmount;
    data['location'] = location;
    data['description'] = description;
    data['weight'] = weight;
    return data;
  }
}