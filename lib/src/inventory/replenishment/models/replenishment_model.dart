///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ReplenishmentModel {
  String user;
  String lpnQty;
  String bin;
  String kpReplenQty;
  String itemCode;
  String legacyItem;
  String velocityClassCA;
  String max;
  String eta;
  String replenDept;
  String replenGroup;
  String onHandQty;
  String backOrderedQty;
  String min;
  String binType;
  String poQty;
  String toQty;
  String pickBinLPN;
  String timeEmpty;
  String whCode;


  ReplenishmentModel({
    required this.min,
    required this.itemCode,
    required this.legacyItem,
    required this.eta,
    required this.replenGroup,
    required this.onHandQty,
    required this.backOrderedQty,
    required this.lpnQty,
    required this.replenDept,
    required this.kpReplenQty,
    required this.bin,
    required this.velocityClassCA,
    required this.max,
    required this.user,
    required this.binType,
    required this.poQty,
    required this.toQty,
    required this.pickBinLPN,
    required this.timeEmpty,
    required this.whCode,
  });

  factory ReplenishmentModel.fromJson(List<dynamic> json) {
    return ReplenishmentModel(
      itemCode: json[1]?.toString() ?? '',
      legacyItem: json[14]?.toString() ?? '',
      user: json[8]?.toString() ?? '',
      lpnQty: json[25]?.toString() ?? '',
      bin: json[2]?.toString() ?? '',
      binType: json[3]?.toString() ?? '',
      kpReplenQty: json[11]?.toString() ?? '',
      velocityClassCA: json[29]?.toString() ?? '',
      max: json[30]?.toString() ?? '',
      min: json[31]?.toString() ?? '',
      eta: json[4]?.toString() ?? '',
      replenDept: json[32]?.toString() ?? '',
      replenGroup: json[38]?.toString() ?? '',
      onHandQty: json[18]?.toString() ?? '',
      backOrderedQty: json[33]?.toString() ?? '',
      poQty: json[5]?.toString() ?? '',
      toQty: json[6]?.toString() ?? '',
      pickBinLPN: json[9]?.toString() ?? '',
      timeEmpty: json[7]?.toString() ?? '',
      whCode: json[12]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['min'] = min;
    data['itemCode'] = itemCode;
    data['legacyItem'] = legacyItem;
    data['eta'] = eta;
    data['replenGroup'] = replenGroup;
    data['onHandQty'] = onHandQty;
    data['backOrderedQty'] = backOrderedQty;
    data['lpnQty'] = lpnQty;
    data['replenDept'] = replenDept;
    data['kpReplenQty'] = kpReplenQty;
    data['bin'] = bin;
    data['velocityClassCA'] = velocityClassCA;
    data['max'] = max;
    data['user'] = user;
    data['binType'] = binType;
    data['poQty'] = poQty;
    data['toQty'] = toQty;
    data['pickBinLPN'] = pickBinLPN;
    data['timeEmpty'] = timeEmpty;
    data['whCode'] = whCode;
    return data;
  }
}
