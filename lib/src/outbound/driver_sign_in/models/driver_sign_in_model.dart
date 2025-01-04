///
/// Code generated by jsonwarehouseDartModel https://ashamp.github.io/jsonwarehouseDartModel/
///
class DriverSignInModel {
  String warehouse;
  String memo;
  String date;
  String state;
  String so;
  String sort;
  String timeWaited;
  String customerName;
  String driverName;
  String poRef;
  String dock;
  String carrierName;
  String palletCount;
  String phone;

  DriverSignInModel({
    required this.memo,
    required this.palletCount,
    required this.state,
    required this.carrierName,
    required this.customerName,
    required this.dock,
    required this.date,
    required this.warehouse,
    required this.poRef,
    required this.driverName,
    required this.timeWaited,
    required this.so,
    required this.sort,
    required this.phone,
  });

  factory DriverSignInModel.fromJson(List<dynamic> json) {
    return DriverSignInModel(
      memo: json[1]?.toString() ?? '',
      state: json[2]?.toString() ?? '',
      carrierName: json[5]?.toString() ?? '',
      palletCount: json[8]?.toString() ?? '',
      customerName: json[10]?.toString() ?? '',
      dock: json[10]?.toString() ?? '',
      date: json[10]?.toString() ?? '',
      warehouse: json[10]?.toString() ?? '',
      poRef: json[10]?.toString() ?? '',
      driverName: json[10]?.toString() ?? '',
      timeWaited: json[10]?.toString() ?? '',
      so: json[10]?.toString() ?? '',
      sort: json[10]?.toString() ?? '',
      phone: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> warehouseJson() {
    final data = <String, dynamic>{};
    data['memo'] = memo;
    data['palletCount'] = palletCount;
    data['state'] = state;
    data['carrierName'] = carrierName;
    data['customerName'] = customerName;
    data['dock'] = dock;
    data['date'] = date;
    data['warehouse'] = warehouse;
    data['poRef'] = poRef;
    data['driverName'] = driverName;
    data['timeWaited'] = timeWaited;
    data['so'] = so;
    data['sort'] = sort;
    data['phone'] = phone;
    return data;
  }
}