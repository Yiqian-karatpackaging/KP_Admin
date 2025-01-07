///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class FreightViewBolModel {
  String warehouse;
  String printLabel;
  String so;
  String type;
  String carrier;
  String shipDate;
  String cost;
  String markUpCost;
  String markUp;
  String lumperFee;
  String roundUp;
  String nsShippingCost;
  String costDifference;
  String palletCount;
  String totalWeight;
  String createDate;
  String createBy;
  String multipleSo;
  String bookDate;
  String bookBy;
  String bol;
  String printLableDate;
  String printLableBy;

  FreightViewBolModel({
    required this.totalWeight,
    required this.printLabel,
    required this.palletCount,
    required this.type,
    required this.bookBy,
    required this.nsShippingCost,
    required this.bookDate,
    required this.multipleSo,
    required this.markUpCost,
    required this.roundUp,
    required this.shipDate,
    required this.createBy,
    required this.warehouse,
    required this.createDate,
    required this.costDifference,
    required this.lumperFee,
    required this.markUp,
    required this.cost,
    required this.so,
    required this.carrier,
    required this.printLableDate,
    required this.printLableBy,
    required this.bol,
  });

  factory FreightViewBolModel.fromJson(List<dynamic> json) {
    return FreightViewBolModel(
      printLabel: json[1]?.toString() ?? '',
      type: json[2]?.toString() ?? '',
      totalWeight: json[3]?.toString() ?? '',
      bookBy: json[6]?.toString() ?? '',
      nsShippingCost: json[5]?.toString() ?? '',
      bookDate: json[7]?.toString() ?? '',
      palletCount: json[8]?.toString() ?? '',
      multipleSo: json[10]?.toString() ?? '',
      markUpCost: json[10]?.toString() ?? '',
      roundUp: json[10]?.toString() ?? '',
      shipDate: json[10]?.toString() ?? '',
      createBy: json[10]?.toString() ?? '',
      warehouse: json[10]?.toString() ?? '',
      costDifference: json[10]?.toString() ?? '',
      createDate: json[10]?.toString() ?? '',
      lumperFee: json[10]?.toString() ?? '',
      markUp: json[10]?.toString() ?? '',
      cost: json[10]?.toString() ?? '',
      so: json[10]?.toString() ?? '',
      carrier: json[10]?.toString() ?? '',
      printLableDate: json[10]?.toString() ?? '',
      printLableBy: json[10]?.toString() ?? '',
      bol: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['totalWeight'] = totalWeight;
    data['printLabel'] = printLabel;
    data['palletCount'] = palletCount;
    data['type'] = type;
    data['bookBy'] = bookBy;
    data['nsShippingCost'] = nsShippingCost;
    data['bookDate'] = bookDate;
    data['multipleSo'] = multipleSo;
    data['markUpCost'] = markUpCost;
    data['roundUp'] = roundUp;
    data['shipDate'] = shipDate;
    data['createBy'] = createBy;
    data['warehouse'] = warehouse;
    data['createDate'] = createDate;
    data['costDifference'] = costDifference;
    data['lumperFee'] = lumperFee;
    data['markUp'] = markUp;
    data['cost'] = cost;
    data['so'] = so;
    data['carrier'] = carrier;
    data['printLableDate'] = printLableDate;
    data['printLableBy'] = printLableBy;
    data['bol'] = bol;
    return data;
  }
}
