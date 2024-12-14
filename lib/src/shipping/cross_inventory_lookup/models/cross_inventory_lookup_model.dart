///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CrossInventoryLookupModel {
  String soQty;
  String totalQty;
  String caQty;
  String txQty;
  String legacyItem;
  String waQty;
  String scQty;
  String hiQty;
  String ilQty;
  String slQty;
  String azQty;
  String njQty;
  String itemCode;

  CrossInventoryLookupModel({
    required this.soQty,
    required this.totalQty,
    required this.caQty,
    required this.txQty,
    required this.legacyItem,
    required this.waQty,
    required this.scQty,
    required this.hiQty,
    required this.ilQty,
    required this.slQty,
    required this.azQty,
    required this.njQty,
    required this.itemCode,
  });

  factory CrossInventoryLookupModel.fromJson(List<dynamic> json) {
    return CrossInventoryLookupModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[2]?.toString() ?? '',
      soQty: json[3]?.toString() ?? '',
      totalQty: json[4]?.toString() ?? '',
      caQty: json[5]?.toString() ?? '',
      txQty: json[6]?.toString() ?? '',
      njQty: json[7]?.toString() ?? '',
      waQty: json[8]?.toString() ?? '',
      scQty: json[9]?.toString() ?? '',
      hiQty: json[10]?.toString() ?? '',
      ilQty: json[17]?.toString() ?? '',
      slQty: json[19]?.toString() ?? '',
      azQty: json[21]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['soQty'] = soQty;
    data['totalQty'] = totalQty;
    data['caQty'] = caQty;
    data['txQty'] = txQty;
    data['legacyItem'] = legacyItem;
    data['waQty'] = waQty;
    data['scQty'] = scQty;
    data['hiQty'] = hiQty;
    data['ilQty'] = ilQty;
    data['slQty'] = slQty;
    data['azQty'] = azQty;
    data['njQty'] = njQty;
    data['itemCode'] = itemCode;
    return data;
  }
}