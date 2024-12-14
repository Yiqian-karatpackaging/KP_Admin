///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class UserPickKpiModel {
  String userName;
  String warehouse;
  String soTotal;
  String items;
  String itemsAvg;
  String totalQty;
  String totalQtyAvg;
  String duration;


  UserPickKpiModel({
    required this.soTotal,
    required this.items,
    required this.warehouse,
    required this.userName,
    required this.itemsAvg,
    required this.totalQty,
    required this.totalQtyAvg,
    required this.duration,
  });

  factory UserPickKpiModel.fromJson(List<dynamic> json) {
    return UserPickKpiModel(
      userName: json[0]?.toString() ?? '',
      warehouse: json[1]?.toString() ?? '',
      soTotal: json[2]?.toString() ?? '',
      items: json[3]?.toString() ?? '',
      itemsAvg: json[4]?.toString() ?? '',
      totalQty: json[5]?.toString() ?? '',
      totalQtyAvg: json[6]?.toString() ?? '',
      duration: json[7]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['soTotal'] = soTotal;
    data['items'] = items;
    data['warehouse'] = warehouse;
    data['userName'] = userName;
    data['itemsAvg'] = itemsAvg;
    data['totalQty'] = totalQty;
    data['totalQtyAvg'] = totalQtyAvg;
    data['duration'] = duration;
    return data;
  }
}