///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SPOrderGroupsSOModel {
  String qty;
  String weight;
  String soCode;
  String warehouse;
  String shipDate;
  String customer;

  SPOrderGroupsSOModel({
    required this.customer,
    required this.soCode,
    required this.qty,
    required this.warehouse,
    required this.weight,
    required this.shipDate,
  });

  factory SPOrderGroupsSOModel.fromJson(List<dynamic> json) {
    return SPOrderGroupsSOModel(
      weight: json[28]?.toString() ?? '',
      customer: json[4]?.toString() ?? '',
      soCode: json[14]?.toString() ?? '',
      qty: json[26]?.toString() ?? '',
      warehouse: json[3]?.toString() ?? '',
      shipDate: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['customer'] = customer;
    data['soCode'] = soCode;
    data['qty'] = qty;
    data['warehouse'] = warehouse;
    data['weight'] = weight;
    data['shipDate'] = shipDate;
    return data;
  }
}